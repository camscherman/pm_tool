# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all

100.times.each do
    Project.create(title: Faker::MostInterestingManInTheWorld.quote, 
    due_date: Faker::Date.birthday)
    
end

puts Cowsay.say("#{Project.count} projects added.", :Stimpy)