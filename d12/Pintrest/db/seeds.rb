# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
user= User.create(name: 'Jason Haas')
User.create(name: 'Alex Bailey')

Pin.destroy_all
Pin.create([
	{name: 'Cats', fav_count: 5, user_id: user.id, description: 'omg its catzzzzz'},
	{name: 'foo', fav_count: 5, user_id: user.id, description: 'omg its foooooo'},
	{name: 'happy', fav_count: 5, user_id: user.id, description: 'this is getting old'}
	])