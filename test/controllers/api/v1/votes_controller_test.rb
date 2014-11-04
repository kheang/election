require 'test_helper'

class API::V1::VotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end
end
