require File.dirname(__FILE__) + '/../test_helper'
require '/transport_sessions_controller'

# Re-raise errors caught by the controller.
class TransportSessionsController; def rescue_action(e) raise e end; end

class TransportSessionsControllerTest < Test::Unit::TestCase
  fixtures :transport_sessions

  def setup
    @controller = TransportSessionsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # A better generator might actually keep updated tests in here, until then its probably better to have nothing than something broken

end
