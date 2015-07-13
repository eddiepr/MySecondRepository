# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Contact.create(:name => 'Jon', :address => '1417 dogwood st', :phone_numbers => '727-349-3932', :email_addresses => 'higuys@gmail.com')
Contact.create(:name => 'eric', :address => '105 fox st', :phone_numbers => '349-348-3484', :email_addresses => 'craig@gmail.com')
Contact.create(:name => 'asher', :address => '595 g st', :phone_numbers => '389-575-8435', :email_addresses => 'asher@gmail.com')
