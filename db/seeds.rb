# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Picture.create!(
	:artist => "cornwallbythesea",
	:title => "Elephant diverts the attention of an attacking Rhino by throwing a stick",
	:url => "https://i.imgur.com/SmYhv6i.gif"
	)

Picture.create!(
	:artist => "bananana4scale",
	:title => "I prefered Darleks when they couldn't go upstairs",
	:url => "https://i.imgur.com/1XZ1MOH.jpg"
	
	)



Picture.create!(
	:artist => "chrisjfinlay",
	:title => "Daleks",
	:url => "https://i.imgur.com/7zvefSq.jpg"

	)


Comment.create!(
	:comments =>"awesome"
	)