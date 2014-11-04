require 'test_helper'

class V1::VotersControllerTest < ActionController::TestCase
  test "should get name" do
    get :name
    assert_response :success
  end

  test "should get party" do
    get :party
    assert_response :success
  end

end
