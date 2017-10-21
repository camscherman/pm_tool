# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.destroy_all
Project.destroy_all

100.times.each do
    p = Project.create(title: Faker::MostInterestingManInTheWorld.quote,
    due_date: Faker::Date.birthday)
    rand(2..10).times.each do
      Task.create(title: Faker::MostInterestingManInTheWorld.quote, body:Faker::Lorem.paragraph, due_date: (Time.now + 100.days), project: p)
    end

end



puts Cowsay.say("#{Project.count} projects added.", :Stimpy)
puts Cowsay.say("#{Task.count} tasks added", :sheep)
