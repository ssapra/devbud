FactoryGirl.define do
  factory :student do
    email "MyString"
    first_name "MyString"
    last_name "YourString"
    year 1
    summary "MyText"
    password "password"
    password_confirmation "password"
    github_url "MyString"
    linkedin_url "MyString"
    image_url "MyString"
    portfolio_url "MyString"
  end
end
