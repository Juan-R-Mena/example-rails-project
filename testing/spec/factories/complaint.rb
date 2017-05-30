FactoryGirl.define do 
  factory :complaint do 
    email Faker::Internet.email
    content Faker::Lorem.paragraph
  end
end