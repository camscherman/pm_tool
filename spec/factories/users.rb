FactoryGirl.define do
  factory :user do
    username "MyString"
    password_digest "MyString"
    is_admin false
  end
end
