
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Place.create(name: "TJs")

Place.create(name: "CTA")

Place.create(name: "walgreens")

280.times do 
  Traffic.create(place_id: rand(1..3),
                 wait: rand(2..14),
                 time: "2014-03-#{rand(2..22)} #{rand(8..22)}:48:15 -0500")
end
