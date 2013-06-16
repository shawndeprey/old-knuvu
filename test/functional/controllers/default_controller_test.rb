require 'test_helper'

class DefaultControllerTest < ActionController::TestCase
	include Devise::TestHelpers
  setup do
    # @user = FactoryGirl.create(:user, admin: true)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_match(/KnuVu is a Quantitative Qualitative Multivariate Heatmapping Decision Tool/, response.body)
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_match(/We started KnuVu because we found it to be a super useful/, response.body)
  end

  test "should get professional_services" do
    get :professional_services
    assert_response :success
    assert_match(/KnuVu currently has a bench of approximately 40 consultants ranging/, response.body)
  end

  test "should get products" do
    get :products
    assert_response :success
    assert_match(/KnuVu creates a New View into decision making/, response.body)
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
    assert_match(/<strong>Contact Us<\/strong>/, response.body)
  end

  test "should get consulting_and_transactional_services" do
    get :consulting_and_transactional_services
    assert_response :success
    assert_match(/KnuVu is an evolution of brauning/, response.body)
  end

  test "should get board_of_directors" do
    get :board_of_directors
    assert_response :success
    assert_match(/Mike Silva is a Mobile \& Emerging Technologies Strategy Consultant/, response.body)
  end

end
