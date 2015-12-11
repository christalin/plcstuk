require 'test_helper'

class PlcgalleriesControllerTest < ActionController::TestCase
  setup do
    @plcgallery = plcgalleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plcgalleries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plcgallery" do
    assert_difference('Plcgallery.count') do
      post :create, plcgallery: { dropbox_token: @plcgallery.dropbox_token, dropbox_uid: @plcgallery.dropbox_uid, email: @plcgallery.email, name: @plcgallery.name }
    end

    assert_redirected_to plcgallery_path(assigns(:plcgallery))
  end

  test "should show plcgallery" do
    get :show, id: @plcgallery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plcgallery
    assert_response :success
  end

  test "should update plcgallery" do
    patch :update, id: @plcgallery, plcgallery: { dropbox_token: @plcgallery.dropbox_token, dropbox_uid: @plcgallery.dropbox_uid, email: @plcgallery.email, name: @plcgallery.name }
    assert_redirected_to plcgallery_path(assigns(:plcgallery))
  end

  test "should destroy plcgallery" do
    assert_difference('Plcgallery.count', -1) do
      delete :destroy, id: @plcgallery
    end

    assert_redirected_to plcgalleries_path
  end
end
