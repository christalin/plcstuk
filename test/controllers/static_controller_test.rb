require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get dropbox" do
    get :dropbox
    assert_response :success
  end

end
