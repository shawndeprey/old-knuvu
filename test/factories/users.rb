# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	sequence :email do |n|
      "user_#{n}@test.knuvu.com"
    end
    password "password"
    password_confirmation "password"
    remember_me true
    admin false
  end
end
