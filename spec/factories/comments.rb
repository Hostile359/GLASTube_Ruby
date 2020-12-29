FactoryBot.define do
  factory :comment do
    username { 'MyString' }
    comment { 'MyString' }
    post_id { 1 }
  end
end
