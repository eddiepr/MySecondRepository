# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Concerto.create(:artist => "Coldplay", :date => DateTime.now + 1.month, :venue => "Hyde Park", :city => "London", :ticket_price => 250, :description => "coldplay concert")
Concerto.create(:artist => "Smashing Pumpkins", :date => DateTime.now + 2.months, :venue => "AAA", :city => "Miami", :ticket_price => 70, :description => "this will be a smashing pumpkins concert")
Concerto.create(:artist => "Nirvana", :date => DateTime.now + 5.days, :venue => "Madison Square Garden", :city => "New York City", :ticket_price => 50)
Concerto.create(:artist => "Dave Matthews", :date => DateTime.now + 4.months + 6.days, :venue => "PNC Arena", :city => "Raleigh", :ticket_price => 40, :description => "Buy tickets to the concert")
Concerto.create(:artist => "The Fray", :date => DateTime.now + 1.month + 3.days, :venue => "Eiffel Tower", :city => "Paris", :ticket_price => 150, :description => "concert outside under the eiffel tower")
Concerto.create(:artist => "Sigur Ros", :date => DateTime.now + 2.months, :venue => "Walnut Creek Amphitheater", :city => "Raleigh", :ticket_price => 35)
Concerto.create(:artist => "Madonna", :date => DateTime.now + 2.days, :venue => "Marlins Park", :city => "Miami", :ticket_price => 100)




