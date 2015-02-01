# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cameras_category = Category.create(name: 'Cameras')
games_category = Category.create(name: 'Games')

Product.create(name: 'Disposable Camera', description: 'One time use!', price: 15, category: cameras_category)
Product.create(name: 'Ultra HD Camera', description: 'Camera with amazing price and quality is just wow!', price: 490, category: cameras_category)
