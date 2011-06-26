require File.dirname(__FILE__) + '/../test_helper'
require '/routes_controller'

# Re-raise errors caught by the controller.
class RoutesController; def rescue_action(e) raise e end; end

class RoutesControllerTest < Test::Unit::TestCase
  fixtures :routes

  def setup
    @controller = RoutesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # A better generator might actually keep updated tests in here, until then its probably better to have nothing than something broken

end
