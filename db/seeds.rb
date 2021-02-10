# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "cleaning database..."
Restaurant.destroy_all
puts "creating restaurants..."
Valloir = { name: 'Valloir', address: 'paris', phone_number: '0612838881' , category: 'chinese'}
Montiblanc = { name: 'Montiblanc' , address: 'tokyo' , phone_number: '0698765629' , category: 'italian'}
Wallah = {name: 'Wallah' , address: 'tel aviv' , phone_number: '0678653425' , category: 'japanese'}
Zebi = { name: 'Zebi' , address: 'arabie saoudite' , phone_number: '0678982344' , category: 'french'}
Wesh = { name: 'Wesh' , address: 'usa' , phone_number: '0645328712' , category: 'belgian'}

[Valloir, Montiblanc, Wallah ,Zebi, Wesh].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"