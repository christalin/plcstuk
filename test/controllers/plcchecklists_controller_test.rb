require 'test_helper'

class PlcchecklistsControllerTest < ActionController::TestCase
  setup do
    @plcchecklist = plcchecklists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plcchecklists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plcchecklist" do
    assert_difference('Plcchecklist.count') do
      post :create, plcchecklist: { attachment: @plcchecklist.attachment, name: @plcchecklist.name }
    end

    assert_redirected_to plcchecklist_path(assigns(:plcchecklist))
  end

  test "should show plcchecklist" do
    get :show, id: @plcchecklist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plcchecklist
    assert_response :success
  end

  test "should update plcchecklist" do
    patch :update, id: @plcchecklist, plcchecklist: { attachment: @plcchecklist.attachment, name: @plcchecklist.name }
    assert_redirected_to plcchecklist_path(assigns(:plcchecklist))
  end

  test "should destroy plcchecklist" do
    assert_difference('Plcchecklist.count', -1) do
      delete :destroy, id: @plcchecklist
    end

    assert_redirected_to plcchecklists_path
  end
end
