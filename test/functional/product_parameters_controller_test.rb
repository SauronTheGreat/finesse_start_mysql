require 'test_helper'

class ProductParametersControllerTest < ActionController::TestCase
  setup do
    @product_parameter = product_parameters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_parameters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_parameter" do
    assert_difference('ProductParameter.count') do
      post :create, product_parameter: @product_parameter.attributes
    end

    assert_redirected_to product_parameter_path(assigns(:product_parameter))
  end

  test "should show product_parameter" do
    get :show, id: @product_parameter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_parameter.to_param
    assert_response :success
  end

  test "should update product_parameter" do
    put :update, id: @product_parameter.to_param, product_parameter: @product_parameter.attributes
    assert_redirected_to product_parameter_path(assigns(:product_parameter))
  end

  test "should destroy product_parameter" do
    assert_difference('ProductParameter.count', -1) do
      delete :destroy, id: @product_parameter.to_param
    end

    assert_redirected_to product_parameters_path
  end
end
