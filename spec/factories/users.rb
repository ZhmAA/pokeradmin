FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "name#{n}@name.com"
    end
  end
end