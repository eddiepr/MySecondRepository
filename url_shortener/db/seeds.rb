# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


prj1 = Shortener.create(:url => "http://www.google.com")
prj2 = Shortener.create(:url => "http://www.facebook.com")
prj3 = Shortener.create(:url => "http://www.twitter.com")
prj4 = Shortener.create(:url => "http://www.myspace.com")