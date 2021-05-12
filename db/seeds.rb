require 'faker'

puts 'Delete'
Restaurant.destroy_all
puts 'Done'

puts "Generate 5 restaurants"
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: %w[chinese italian japanese french belgian].sample,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164
  )
end
puts 'Done'
