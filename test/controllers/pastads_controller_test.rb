require 'test_helper'

class PastadsControllerTest < ActionController::TestCase
  setup do
    @pastad = pastads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pastads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pastad" do
    assert_difference('Pastad.count') do
      post :create, pastad: { date: @pastad.date, name: @pastad.name }
    end

    assert_redirected_to pastad_path(assigns(:pastad))
  end

  test "should show pastad" do
    get :show, id: @pastad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pastad
    assert_response :success
  end

  test "should update pastad" do
    patch :update, id: @pastad, pastad: { date: @pastad.date, name: @pastad.name }
    assert_redirected_to pastad_path(assigns(:pastad))
  end

  test "should destroy pastad" do
    assert_difference('Pastad.count', -1) do
      delete :destroy, id: @pastad
    end

    assert_redirected_to pastads_path
  end
end
