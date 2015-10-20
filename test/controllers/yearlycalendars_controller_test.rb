require 'test_helper'

class YearlycalendarsControllerTest < ActionController::TestCase
  setup do
    @yearlycalendar = yearlycalendars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yearlycalendars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yearlycalendar" do
    assert_difference('Yearlycalendar.count') do
      post :create, yearlycalendar: { event1: @yearlycalendar.event1, event2: @yearlycalendar.event2, month: @yearlycalendar.month }
    end

    assert_redirected_to yearlycalendar_path(assigns(:yearlycalendar))
  end

  test "should show yearlycalendar" do
    get :show, id: @yearlycalendar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yearlycalendar
    assert_response :success
  end

  test "should update yearlycalendar" do
    patch :update, id: @yearlycalendar, yearlycalendar: { event1: @yearlycalendar.event1, event2: @yearlycalendar.event2, month: @yearlycalendar.month }
    assert_redirected_to yearlycalendar_path(assigns(:yearlycalendar))
  end

  test "should destroy yearlycalendar" do
    assert_difference('Yearlycalendar.count', -1) do
      delete :destroy, id: @yearlycalendar
    end

    assert_redirected_to yearlycalendars_path
  end
end
