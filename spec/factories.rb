FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@gmail.com"}
    password 'testtest123'
  end
end