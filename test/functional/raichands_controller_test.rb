require 'test_helper'

class RaichandsControllerTest < ActionController::TestCase
  setup do
    @raichand = raichands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raichands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raichand" do
    assert_difference('Raichand.count') do
      post :create, :raichand => @raichand.attributes
    end

    assert_redirected_to raichand_path(assigns(:raichand))
  end

  test "should show raichand" do
    get :show, :id => @raichand.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @raichand.to_param
    assert_response :success
  end

  test "should update raichand" do
    put :update, :id => @raichand.to_param, :raichand => @raichand.attributes
    assert_redirected_to raichand_path(assigns(:raichand))
  end

  test "should destroy raichand" do
    assert_difference('Raichand.count', -1) do
      delete :destroy, :id => @raichand.to_param
    end

    assert_redirected_to raichands_path
  end
end
