require File.dirname(__FILE__) + '/../test_helper'
require 'manager_controller'

# Re-raise errors caught by the controller.
class ManagerController; def rescue_action(e) raise e end; end

class ManagerControllerTest < Test::Unit::TestCase
  def setup
    @controller = ManagerController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
