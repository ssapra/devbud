# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    email_address "MyString"
    name "MyString"
    year 1
    summary "MyText"
    password_hash "MyString"
    github_url "MyString"
    linkedin_url "MyString"
    image_url "MyString"
    portfolio_url "MyString"
  end
end
