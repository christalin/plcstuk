require 'test_helper'

class EventchecklistsControllerTest < ActionController::TestCase
  setup do
    @eventchecklist = eventchecklists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventchecklists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eventchecklist" do
    assert_difference('Eventchecklist.count') do
      post :create, eventchecklist: { checklistid: @eventchecklist.checklistid, comments: @eventchecklist.comments, completed: @eventchecklist.completed, eventid: @eventchecklist.eventid }
    end

    assert_redirected_to eventchecklist_path(assigns(:eventchecklist))
  end

  test "should show eventchecklist" do
    get :show, id: @eventchecklist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eventchecklist
    assert_response :success
  end

  test "should update eventchecklist" do
    patch :update, id: @eventchecklist, eventchecklist: { checklistid: @eventchecklist.checklistid, comments: @eventchecklist.comments, completed: @eventchecklist.completed, eventid: @eventchecklist.eventid }
    assert_redirected_to eventchecklist_path(assigns(:eventchecklist))
  end

  test "should destroy eventchecklist" do
    assert_difference('Eventchecklist.count', -1) do
      delete :destroy, id: @eventchecklist
    end

    assert_redirected_to eventchecklists_path
  end
end
