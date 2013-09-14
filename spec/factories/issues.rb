# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :issue do
    title "MyString"
    description "MyText"
    is_reproducible false
    category "MyString"
  end
end
