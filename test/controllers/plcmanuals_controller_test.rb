require 'test_helper'

class PlcmanualsControllerTest < ActionController::TestCase
  setup do
    @plcmanual = plcmanuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plcmanuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plcmanual" do
    assert_difference('Plcmanual.count') do
      post :create, plcmanual: { attachment: @plcmanual.attachment, name: @plcmanual.name }
    end

    assert_redirected_to plcmanual_path(assigns(:plcmanual))
  end

  test "should show plcmanual" do
    get :show, id: @plcmanual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plcmanual
    assert_response :success
  end

  test "should update plcmanual" do
    patch :update, id: @plcmanual, plcmanual: { attachment: @plcmanual.attachment, name: @plcmanual.name }
    assert_redirected_to plcmanual_path(assigns(:plcmanual))
  end

  test "should destroy plcmanual" do
    assert_difference('Plcmanual.count', -1) do
      delete :destroy, id: @plcmanual
    end

    assert_redirected_to plcmanuals_path
  end
end
