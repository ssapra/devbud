# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    summary "MyString"
    salt "MyString"
    linkedin_url "MyString"
    image_url "MyString"
    verified_email false
    activation_state "MyString"
    activation_token "MyString"
    activation_token_expires_at "2014-12-24 15:27:13"
    reset_password_token "MyString"
    reset_password_token_expires_at "2014-12-24 15:27:13"
    reset_password_email_sent_at "2014-12-24 15:27:13"
    remember_me_token "MyString"
    remember_me_token_expires_at "2014-12-24 15:27:13"
  end
end
