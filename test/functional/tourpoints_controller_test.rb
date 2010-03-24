require 'test_helper'

class TourpointsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tourpoints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tourpoint" do
    assert_difference('Tourpoint.count') do
      post :create, :tourpoint => { }
    end

    assert_redirected_to tourpoint_path(assigns(:tourpoint))
  end

  test "should show tourpoint" do
    get :show, :id => tourpoints(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tourpoints(:one).to_param
    assert_response :success
  end

  test "should update tourpoint" do
    put :update, :id => tourpoints(:one).to_param, :tourpoint => { }
    assert_redirected_to tourpoint_path(assigns(:tourpoint))
  end

  test "should destroy tourpoint" do
    assert_difference('Tourpoint.count', -1) do
      delete :destroy, :id => tourpoints(:one).to_param
    end

    assert_redirected_to tourpoints_path
  end
end
