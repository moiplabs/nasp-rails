require 'test_helper'

class NaspRailsControllerTest < ActionController::TestCase
  setup do
    @nasp_rail = nasp_rails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nasp_rails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nasp_rail" do
    assert_difference('NaspRail.count') do
      post :create, :nasp_rail => @nasp_rail.attributes
    end

    assert_redirected_to nasp_rail_path(assigns(:nasp_rail))
  end

  test "should show nasp_rail" do
    get :show, :id => @nasp_rail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nasp_rail.to_param
    assert_response :success
  end

  test "should update nasp_rail" do
    put :update, :id => @nasp_rail.to_param, :nasp_rail => @nasp_rail.attributes
    assert_redirected_to nasp_rail_path(assigns(:nasp_rail))
  end

  test "should destroy nasp_rail" do
    assert_difference('NaspRail.count', -1) do
      delete :destroy, :id => @nasp_rail.to_param
    end

    assert_redirected_to nasp_rails_path
  end
end
