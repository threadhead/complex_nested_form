require 'test_helper'

class SubUnitsControllerTest < ActionController::TestCase
  setup do
    @sub_unit = sub_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_unit" do
    assert_difference('SubUnit.count') do
      post :create, sub_unit: { name: @sub_unit.name, organization: @sub_unit.organization }
    end

    assert_redirected_to sub_unit_path(assigns(:sub_unit))
  end

  test "should show sub_unit" do
    get :show, id: @sub_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_unit
    assert_response :success
  end

  test "should update sub_unit" do
    put :update, id: @sub_unit, sub_unit: { name: @sub_unit.name, organization: @sub_unit.organization }
    assert_redirected_to sub_unit_path(assigns(:sub_unit))
  end

  test "should destroy sub_unit" do
    assert_difference('SubUnit.count', -1) do
      delete :destroy, id: @sub_unit
    end

    assert_redirected_to sub_units_path
  end
end
