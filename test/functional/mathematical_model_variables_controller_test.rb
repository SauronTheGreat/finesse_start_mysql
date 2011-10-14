require 'test_helper'

class MathematicalModelVariablesControllerTest < ActionController::TestCase
  setup do
    @mathematical_model_variable = mathematical_model_variables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mathematical_model_variables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mathematical_model_variable" do
    assert_difference('MathematicalModelVariable.count') do
      post :create, mathematical_model_variable: @mathematical_model_variable.attributes
    end

    assert_redirected_to mathematical_model_variable_path(assigns(:mathematical_model_variable))
  end

  test "should show mathematical_model_variable" do
    get :show, id: @mathematical_model_variable.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mathematical_model_variable.to_param
    assert_response :success
  end

  test "should update mathematical_model_variable" do
    put :update, id: @mathematical_model_variable.to_param, mathematical_model_variable: @mathematical_model_variable.attributes
    assert_redirected_to mathematical_model_variable_path(assigns(:mathematical_model_variable))
  end

  test "should destroy mathematical_model_variable" do
    assert_difference('MathematicalModelVariable.count', -1) do
      delete :destroy, id: @mathematical_model_variable.to_param
    end

    assert_redirected_to mathematical_model_variables_path
  end
end
