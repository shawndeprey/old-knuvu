require 'test_helper'

class DefaultControllerTest < ActionController::TestCase
  setup do
    # @user = FactoryGirl.create(:user, admin: true)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
