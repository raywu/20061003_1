class IndexController < ApplicationController
  before_filter :load_user_if_logged_in
end
