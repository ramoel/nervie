require 'test_helper'

class TuristicPointsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:turistic_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create turistic_point" do
    assert_difference('TuristicPoint.count') do
      post :create, :turistic_point => { }
    end

    assert_redirected_to turistic_point_path(assigns(:turistic_point))
  end

  test "should show turistic_point" do
    get :show, :id => turistic_points(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => turistic_points(:one).to_param
    assert_response :success
  end

  test "should update turistic_point" do
    put :update, :id => turistic_points(:one).to_param, :turistic_point => { }
    assert_redirected_to turistic_point_path(assigns(:turistic_point))
  end

  test "should destroy turistic_point" do
    assert_difference('TuristicPoint.count', -1) do
      delete :destroy, :id => turistic_points(:one).to_param
    end

    assert_redirected_to turistic_points_path
  end
end
