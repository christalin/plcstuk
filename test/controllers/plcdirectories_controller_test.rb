require 'test_helper'

class PlcdirectoriesControllerTest < ActionController::TestCase
  setup do
    @plcdirectory = plcdirectories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plcdirectories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plcdirectory" do
    assert_difference('Plcdirectory.count') do
      post :create, plcdirectory: { email: @plcdirectory.email, name: @plcdirectory.name, phone: @plcdirectory.phone, term: @plcdirectory.term }
    end

    assert_redirected_to plcdirectory_path(assigns(:plcdirectory))
  end

  test "should show plcdirectory" do
    get :show, id: @plcdirectory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plcdirectory
    assert_response :success
  end

  test "should update plcdirectory" do
    patch :update, id: @plcdirectory, plcdirectory: { email: @plcdirectory.email, name: @plcdirectory.name, phone: @plcdirectory.phone, term: @plcdirectory.term }
    assert_redirected_to plcdirectory_path(assigns(:plcdirectory))
  end

  test "should destroy plcdirectory" do
    assert_difference('Plcdirectory.count', -1) do
      delete :destroy, id: @plcdirectory
    end

    assert_redirected_to plcdirectories_path
  end
end
