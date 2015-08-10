require 'test_helper'

class DrupsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
