require 'test_helper'

class MathematicalModelVariableValuesControllerTest < ActionController::TestCase
  setup do
    @mathematical_model_variable_value = mathematical_model_variable_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mathematical_model_variable_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mathematical_model_variable_value" do
    assert_difference('MathematicalModelVariableValue.count') do
      post :create, mathematical_model_variable_value: @mathematical_model_variable_value.attributes
    end

    assert_redirected_to mathematical_model_variable_value_path(assigns(:mathematical_model_variable_value))
  end

  test "should show mathematical_model_variable_value" do
    get :show, id: @mathematical_model_variable_value.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mathematical_model_variable_value.to_param
    assert_response :success
  end

  test "should update mathematical_model_variable_value" do
    put :update, id: @mathematical_model_variable_value.to_param, mathematical_model_variable_value: @mathematical_model_variable_value.attributes
    assert_redirected_to mathematical_model_variable_value_path(assigns(:mathematical_model_variable_value))
  end

  test "should destroy mathematical_model_variable_value" do
    assert_difference('MathematicalModelVariableValue.count', -1) do
      delete :destroy, id: @mathematical_model_variable_value.to_param
    end

    assert_redirected_to mathematical_model_variable_values_path
  end
end
