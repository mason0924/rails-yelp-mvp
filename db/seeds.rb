# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Review.destroy_all
puts "cleaning done"

restaurants_attributes = [
  {
    name: 'Dig Inn',
    address: 'NYC',
    category:  'chinese'
  },
  {
    name: 'McDonalds',
    address: 'Paris',
    category:  'french'
  },
  {
    name: 'Va Piano',
    address: 'Milan',
    category:  'italian'
  },
  {
    name: 'Kamps',
    address: 'Cologne',
    category:  'belgian'
  },
  {
    name: 'Yasuda',
    address: 'NYC',
    category:  'japanese'
  }
]
restaurants = Restaurant.create!(restaurants_attributes)
p restaurants
review_attributes = [
  {
    restaurant: restaurants[0],
    content: 'Healthiest meal ever!!',
    rating: 5
  },
  {
    restaurant: restaurants[1],
    content: 'So so service!',
    rating: 3
  },
  {
    restaurant: restaurants[2],
    content: 'Fucking dry pasta',
    rating: 1
  },
  {
    restaurant: restaurants[3],
    content: 'Amazing breads',
    rating: 4
  },
  {
    restaurant: restaurants[4],
    content: 'Pretentious sushi',
    rating: 2
  }
]
reviews = Review.create!(review_attributes)
p reviews

puts "seed done"
      # 'chinese','italian','japanese','french','belgian'