FactoryGirl.define do
  factory :project do
    sequence(:title) {|n| "#{Faker::Commerce.product_name} -- #{n}"}
    description "#{Faker::Lorem.paragraph}"
    due_date "#{Faker::Date.birthday}"

  end
end
