FactoryBot.define do
  factory :page do
    user
    name "test page"
  end
  factory :post do
    album
    sequence(:text_content) { |n| "#{n} sample content for post"}
  end
  factory :photo do
    post
    image Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/images/test.png')))
    after :create do |b|
      b.update_column(:image, "spec/fixtures/images/test.png")
    end
  end
  factory :friendship do
  end
  factory :album do
    user
    sequence(:name) { |n| "test#{n} album" }
  end
  factory :event do
    sequence(:name) { |n| "test#{n} event"}
  end
  factory :user do
    sequence(:email) { |n| "test#{n}@gmail.com"}
    password 'testtest123'
  end
end