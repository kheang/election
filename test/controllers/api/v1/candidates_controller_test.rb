require 'test_helper'

class API::V1::CandidatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: candidates(:one).id
    assert_response :success
  end

end
