require 'test_helper'

class MathematicalModelConstantsControllerTest < ActionController::TestCase
  setup do
    @mathematical_model_constant = mathematical_model_constants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mathematical_model_constants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mathematical_model_constant" do
    assert_difference('MathematicalModelConstant.count') do
      post :create, mathematical_model_constant: @mathematical_model_constant.attributes
    end

    assert_redirected_to mathematical_model_constant_path(assigns(:mathematical_model_constant))
  end

  test "should show mathematical_model_constant" do
    get :show, id: @mathematical_model_constant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mathematical_model_constant.to_param
    assert_response :success
  end

  test "should update mathematical_model_constant" do
    put :update, id: @mathematical_model_constant.to_param, mathematical_model_constant: @mathematical_model_constant.attributes
    assert_redirected_to mathematical_model_constant_path(assigns(:mathematical_model_constant))
  end

  test "should destroy mathematical_model_constant" do
    assert_difference('MathematicalModelConstant.count', -1) do
      delete :destroy, id: @mathematical_model_constant.to_param
    end

    assert_redirected_to mathematical_model_constants_path
  end
end
