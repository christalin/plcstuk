require 'test_helper'

class HnccontactsControllerTest < ActionController::TestCase
  setup do
    @hnccontact = hnccontacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hnccontacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Hnccontact.count') do
      post :create, hnccontact: { department: @hnccontact.department, email: @hnccontact.email, name: @hnccontact.name, phone: @hnccontact.phone }
    end

    assert_redirected_to hnccontact_path(assigns(:hnccontact))
  end

  test "should show hnccontact" do
    get :show, id: @hnccontact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hnccontact
    assert_response :success
  end

  test "should update contact" do
    patch :update, id: @hnccontact, hnccontact: { department: @hnccontact.department, email: @hnccontact.email, name: @hnccontact.name, phone: @hnccontact.phone }
    assert_redirected_to hnccontact_path(assigns(:hnccontact))
  end

  test "should destroy contact" do
    assert_difference('Hnccontact.count', -1) do
      delete :destroy, id: @hnccontact
    end

    assert_redirected_to hnccontacts_path
  end
end
