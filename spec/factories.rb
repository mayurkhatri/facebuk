FactoryBot.define do
  factory :post do
  end
  factory :photo do
  end
  factory :friendship do
  end
  factory :album do
  end
  factory :event do
    sequence(:name) { |n| "test#{n} event"}
  end
  factory :user do
    sequence(:email) { |n| "test#{n}@gmail.com"}
    password 'testtest123'
  end
end