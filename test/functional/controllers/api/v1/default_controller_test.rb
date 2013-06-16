require 'test_helper'

class Api::V1::DefaultControllerTest < ActionController::TestCase
  setup do
    # @user = FactoryGirl.create(:user, admin: true)
  end

  test "should get index" do
    get :index, :format => "json"
    assert_response :success
    json = ActiveSupport::JSON.decode(response.body)
    json.has_key?("app_name").must_equal true
    json.has_key?("build_version").must_equal true
  end

end
