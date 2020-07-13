# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
include Faker

60.times do 
	p = Product.create(
		name: Faker::Commerce.unique.product_name,
		category_id: Faker::Commerce.department(max: 5),
		price: Faker::Commerce.price,
		color: Faker::Color.color_name,
		quantity: Faker::Number.decimal_part(digits: 2),
        description: Faker::Hipster.sentence(word_count: rand(4..8))
        )		
	puts "Createing #{p.id}"
  downloaded_image = open("https://source.unsplash.com/600x600/?#{p.name}")
  p.image.attach(io: downloaded_image, filename: "m-#{p.name}.jpg")

end
