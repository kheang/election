require 'test_helper'

class API::V1::VotersControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, { id: voters(:one), token: voters(:one).token }
    assert_response :success
  end

end
