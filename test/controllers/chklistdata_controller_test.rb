require 'test_helper'

class ChklistdataControllerTest < ActionController::TestCase
  setup do
    @chklistdatum = chklistdata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chklistdata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chklistdatum" do
    assert_difference('Chklistdatum.count') do
      post :create, chklistdatum: { assignedto: @chklistdatum.assignedto, chklstid: @chklistdatum.chklstid, comments: @chklistdatum.comments, completed: @chklistdatum.completed, evntid: @chklistdatum.evntid }
    end

    assert_redirected_to chklistdatum_path(assigns(:chklistdatum))
  end

  test "should show chklistdatum" do
    get :show, id: @chklistdatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chklistdatum
    assert_response :success
  end

  test "should update chklistdatum" do
    patch :update, id: @chklistdatum, chklistdatum: { assignedto: @chklistdatum.assignedto, chklstid: @chklistdatum.chklstid, comments: @chklistdatum.comments, completed: @chklistdatum.completed, evntid: @chklistdatum.evntid }
    assert_redirected_to chklistdatum_path(assigns(:chklistdatum))
  end

  test "should destroy chklistdatum" do
    assert_difference('Chklistdatum.count', -1) do
      delete :destroy, id: @chklistdatum
    end

    assert_redirected_to chklistdata_path
  end
end
