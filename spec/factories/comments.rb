FactoryBot.define do
  factory :comment do
    user_id { 1 }
    comment { 'MyString' }
    post_id { 1 }
  end
end
