require 'test_helper'

class AvailableDecisionParametersControllerTest < ActionController::TestCase
  setup do
    @available_decision_parameter = available_decision_parameters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:available_decision_parameters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create available_decision_parameter" do
    assert_difference('AvailableDecisionParameter.count') do
      post :create, available_decision_parameter: @available_decision_parameter.attributes
    end

    assert_redirected_to available_decision_parameter_path(assigns(:available_decision_parameter))
  end

  test "should show available_decision_parameter" do
    get :show, id: @available_decision_parameter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @available_decision_parameter.to_param
    assert_response :success
  end

  test "should update available_decision_parameter" do
    put :update, id: @available_decision_parameter.to_param, available_decision_parameter: @available_decision_parameter.attributes
    assert_redirected_to available_decision_parameter_path(assigns(:available_decision_parameter))
  end

  test "should destroy available_decision_parameter" do
    assert_difference('AvailableDecisionParameter.count', -1) do
      delete :destroy, id: @available_decision_parameter.to_param
    end

    assert_redirected_to available_decision_parameters_path
  end
end
