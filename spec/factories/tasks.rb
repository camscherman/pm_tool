FactoryGirl.define do
  factory :task do
    title "#{Faker::Lorem.paragraph}"
    due_date {Time.now + 100.days }
    

  end
end
