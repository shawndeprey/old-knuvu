require "test_helper"

class UserTest < ActiveSupport::TestCase
	setup do
    @user = FactoryGirl.create(:user)
  end

  def test_must_be_valid
    @user.valid?.must_equal true
  end

end
