# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p 'creating user'

u1=User.create!(
  name: "Admin",
  password: "password"
)

u2=User.create!(
  name: "Guest",
  password: "password"
)
puts "Created #{User.count} users"
puts User.pluck(:name).join(',')


p 'creating airplanes'

a1=Airplane.create!(
  name: "Bi-plane",
  rows: 10,
  cols: 6
)

a2=Airplane.create!(
  name: "747",
  rows: 20,
  cols: 9
)

puts "Created #{Airplane.count} aeroplanes"
puts Airplane.pluck(:name).join(',')
p 'creating flights'

f1=Flight.create!(
  scheduled: "01/01/2021",
  to: "Sydney",
  from: "Perth"
)

f2=Flight.create!(
  scheduled: "02/02/2021",
  to: "Melbourne",
  from: "Perth"
)

puts "Created #{Flight.count} flights"
puts Flight.pluck(:to).join(',')
