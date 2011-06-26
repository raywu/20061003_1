class UserController < ApplicationController
  model   :user
  before_filter :login_required, :only => :change_password
  before_filter :load_user_if_logged_in, :except => :change_password

  # The action used to log a user in.
  #
  # If the user was redirected to the login page
  # by the login_required method, they should be sent back to the page they were
  # trying to access. If not, they will be sent to "/user/login".
  # 
  # If a user is already logged in and they try to access this page (or submit a login form),
  # they should be redirected to the home page and notified that they're already logged in
  def login
    if !@user.nil?
      flash[:success] = "you're already logged in as: #{@user.login_id}"
      redirect_to :controller => "index", :action => "index"
      return
    end
    
    case request.method
    when :get
      render
      return
    when :post
      user = User.authenticate(params[:login_id], params[:password])
      if user != nil
        session[:user_id] = user.id

        if params[:set_remember_me] == "1"
          cookies[:transport_remember_me_token] = {:value => user.id.to_s + "_t_" + user.set_remember_me, :expires => Time.now + 1.week}
        end
      
        redirect_to_stored_or_default :controller => "index", :action => "index"
        return
      else
        flash.now[:error] = "please re-check your login id and password"
        render
        return
      end
    end
  end

  def verify
    if !@user.nil?
      flash[:success] = "you're already logged in as: #{@user.login_id}"
      redirect_to :controller => "index", :action => "index"
      return
    end

    case request.method
    when :get
      redirect_to :action => "login"
      return
    when :post
      if params[:login_id] =~ /^.+@.+\..+$/
        flash[:error] = "Please provide a valid username,<br /> rather than a full email address."
        redirect_to :action => "login"
        return
      end
      u = User.find_by_login_id(params[:login_id])
      if u.nil?
        u = User.new(:login_id => params[:login_id],
                     :verified => 0)
      elsif u.verified == 0
        # do nothing here, but generate a new verification token and email it to them
      else
        flash[:error] = "The login id you gave was already registered with us. Please just click 'forgot password' or log in."
        redirect_to :action => "login"
        return
      end
        
      u.save_with_validation(false)
      u.generate_reset_password_token
      Notifications.deliver_verify(u.login_id, u.reset_password_token, u.email)

      flash[:email_address] = u.email
      redirect_to :action => "complete_verify"
      return        
    end
  end
  
  def complete_verify
    case request.method
    when :get
      render
      return
    when :post
      user = User.find(:first, :conditions => ["reset_password_token = ?", params[:token]])
      if user.nil?
        flash[:error] = "The verification code you entered was incorrect, please try again."
        render
        return
      elsif params[:password] != params[:repeat_password]
        flash[:error] = "The two passwords you entered did not match, please try again"
        render
        return
      else
        user.verified = 1
        user.change_password(params[:password], params[:repeat_password])
        user.save
        session[:user_id] = user.id
        redirect_to_stored_or_default :action => "login"
        return
      end
    end
  end

  def logout
    remember_me_token = cookies[:transport_remember_me_token]
    if !remember_me_token.nil?
      cookies.delete :transport_remember_me_token
      User.invalidate_token(remember_me_token)
    end
    session[:user_id] = nil
    flash[:success] = "You are now logged out..."
    redirect_to :controller => "index", :action => "index"
  end

  def change_password
    case request.method
    when :get
      render
      return
    when :post
      @user.change_password(params[:password], params[:repeat_password])
      if @user.errors.empty?
        Notifications.deliver_change_password_success(@user)
        flash[:success] = "saved your new password"
        render
        return
      else
        flash.now[:error] = @user.errors.full_html_error_string
        render
        return
      end
    end
  end

  def change_forgot_password
    case request.method
    when :get
      @wanton_user = User.find(:first, :conditions => ["id = ? AND reset_password_token = ?", params[:user_id], params[:auth_token]])
      render
      return
    when :post
      @user = User.find(:first, :conditions => ["id = ?", params[:user_id]])
      @user.change_password(params[:password], params[:repeat_password])
      if @user.errors.empty?
        @user.reset_password_token = nil
        @user.save
        Notifications.deliver_change_password_success(@user)
        flash[:success] = "saved your new password, please log in"
        redirect_to :action => "login"
        return
      else
        flash.now[:error] = @user.errors.full_html_error_string
        render
        return
      end
    end
  end

  def forgot_password
    # Always redirect if logged in
    if !@user.nil?
      flash[:error] = "you are already logged in.<br />If you forgot your password and want to reset it, log out and then click 'forgot password' on the log in page."
      redirect_to :controller => "home", :action => "index"
      return
    end

    # Render on GET
    if request.method == :get
      render
      return
    end

    # Handling a POST from here on out...
    
    # Did they not enter an email/username?
    if params["login_id"].empty?
      flash.now[:error] = 'please enter an email address or username.'
      render
      return
    end
    
    user = User.find(:first, :conditions => ["login_id = ?", params["login_id"]])

    # If the search turned up nil, we'll send the user back to try again.
    # Otherwise, we'll send them a change_password URL and notify them of that...
    if user.nil?
      flash.now[:error] = "we could not find a user with that login id, please try again"
      render
      return
    else
      key = user.generate_reset_password_token
      url = url_for(:action => 'change_forgot_password', :user_id => user.id, :auth_token => key)
      Notifications.deliver_forgot_password(user, url)
      flash.now[:success] = "emailed instructions for setting a new password to #{user.email}.<br />Please follow the instructions in that email. Thank you."
      render
      return
    end
  end
  
  def sent_forgot_password_link
    if @flash[:success]
      render
      return
    else
      redirect_to :controller => "home", :action => "index"
    end
  end
end
