puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone: "05567659",
    category:  'japanese'
  },
  {
    name:         'boom',
    address:      '47 avenue Alfred Nobel',
    phone: "03567659",
    category:  'french'
  },
  {
    name:         'Cana',
    address:      '5 impasse Dyonisos',
    phone: "04567659",
    category:  'italian'

  },
  {
    name:         'Boulgour & Co',
    address:      '58 rue Hoummous',
    phone: "01567659",
    category:  'belgian'

  },
 {
    name:         'La pagode dorée',
    address:      '58 rue du Tonkin',
    phone: "0256769",
    category:  'chinese'

  },

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
