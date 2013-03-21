# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Manufacturer.create(:name => "Sony")
Manufacturer.create(:name => "Microsoft")
Manufacturer.create(:name => "Nintendo")

Platform.create(:name => "3DS", :manufacturer => Manufacturer.find_by_nome("Nintendo"))
Platform.create(:name => "Wii", :manufacturer => Manufacturer.find_by_nome("Nintendo"))
Platform.create(:name => "Playstation 3", :manufacturer => Manufacturer.find_by_nome("Sony"))
Platform.create(:name => "PSP", :manufacturer => Manufacturer.find_by_nome("Sony"))
Platform.create(:name => "PSvita", :manufacturer => Manufacturer.find_by_nome("Sony"))

Platform.create(:name => "Xbox 360", :manufacturer => Manufacturer.find_by_nome("Microsoft"))
Platform.create(:name => "PC", :manufacturer => Manufacturer.find_by_nome("Microsoft"))
