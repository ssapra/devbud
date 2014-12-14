# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name "MyString"
    description "MyString"
    code "MyString"
    url "MyString"
    started_at "2014-12-13 22:31:20"
    last_updated_at "2014-12-13 22:31:20"
    student_id 1
  end
end
