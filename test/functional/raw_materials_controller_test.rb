require 'test_helper'

class RawMaterialsControllerTest < ActionController::TestCase
  setup do
    @raw_material = raw_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raw_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raw_material" do
    assert_difference('RawMaterial.count') do
      post :create, raw_material: @raw_material.attributes
    end

    assert_redirected_to raw_material_path(assigns(:raw_material))
  end

  test "should show raw_material" do
    get :show, id: @raw_material.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raw_material.to_param
    assert_response :success
  end

  test "should update raw_material" do
    put :update, id: @raw_material.to_param, raw_material: @raw_material.attributes
    assert_redirected_to raw_material_path(assigns(:raw_material))
  end

  test "should destroy raw_material" do
    assert_difference('RawMaterial.count', -1) do
      delete :destroy, id: @raw_material.to_param
    end

    assert_redirected_to raw_materials_path
  end
end
