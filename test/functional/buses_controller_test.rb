require File.dirname(__FILE__) + '/../test_helper'
require '/buses_controller'

# Re-raise errors caught by the controller.
class BusesController; def rescue_action(e) raise e end; end

class BusesControllerTest < Test::Unit::TestCase
  fixtures :buses

  def setup
    @controller = BusesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # A better generator might actually keep updated tests in here, until then its probably better to have nothing than something broken

end
