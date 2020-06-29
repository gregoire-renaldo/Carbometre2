# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'

puts 'Cleaning database...'

Item.destroy_all
List.destroy_all
Footprint.destroy_all


puts 'Creating 20 fake users...'
list = (0..20).to_a
list.each do |num|
    user = User.new(
      email:"#{num}@gmail.com",
      password: 'azerty',
    )
    user.save!
end
puts 'Finished!'

puts 'Creating 20 fake footprints...'
40.times do
  footprint = Footprint.new(
    user_id: rand(1..20)
  )
  footprint.save!
end
puts 'Finished!'

puts 'creating 20 items'
20.times do
  item = Item.new(
    name: Faker::Games::Pokemon.name,
    category: Faker::Subscription.plan,
    charge: rand(0.10..10.32)
  )
  item.save
end
puts 'finished'



puts 'Creating 30 fake lists (bilans carbone)...'
20.times do
  bilan = List.new(
    footprint_id: rand(0..20),
    item_id: rand(1..20),
    value: rand(1..50),
    value2: 0
  )
  bilan.save!
end
puts 'Finished!'




