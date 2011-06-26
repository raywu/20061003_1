require File.dirname(__FILE__) + '/../test_helper'
require '/administrators_controller'

# Re-raise errors caught by the controller.
class AdministratorsController; def rescue_action(e) raise e end; end

class AdministratorsControllerTest < Test::Unit::TestCase
  fixtures :administrators

  def setup
    @controller = AdministratorsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # A better generator might actually keep updated tests in here, until then its probably better to have nothing than something broken

end
