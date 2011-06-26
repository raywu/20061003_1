require File.dirname(__FILE__) + '/../test_helper'
require 'transport_session_controller'

# Re-raise errors caught by the controller.
class TransportSessionController; def rescue_action(e) raise e end; end

class TransportSessionControllerTest < Test::Unit::TestCase
  def setup
    @controller = TransportSessionController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
