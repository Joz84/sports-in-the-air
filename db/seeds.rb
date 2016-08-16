# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sport.destroy_all
sports = [
  "basketball",
  "baseball",
  "rowing",
  "football",
  "soccer",
  "tennis",
  "curling",
  "badminton",
  "horse riding",
  "handball",
  "rugby",
  "golf"
]
sports.each { |sport| Sport.create(name: sport) }

User.destroy_all
user_attributes = [
  {
    first_name: "Jonathan",
    last_name: "Bobo",
    login: "Jojolapin",
    mail: "jojolapin@gmail.com",
    password: "blabla",
    gender: "male",
    age: 22,
    status: "available"
  },
  {
    first_name: "Paul",
    last_name: "Pot",
    login: "Potpot",
    mail: "potpot@gmail.com",
    password: "blabla",
    gender: "male",
    age: 22,
    status: "available"
  },
  {
    first_name: "Poulou",
    last_name: "Boulobou",
    login: "Bouloubo",
    mail: "bouloubo@gmail.com",
    password: "blabla",
    gender: "female",
    age: 22,
    status: "available"
  },
  {
    first_name: "Claire",
    last_name: "Bye",
    login: "Clairye",
    mail: "clairye@gmail.com",
    password: "blabla",
    gender: "male",
    age: 22,
    status: "available"
  },
  {
    first_name: "John",
    last_name: "bobo",
    login: "JohnI",
    mail: "johni@gmail.com",
    password: "blabla",
    gender: "male",
    age: 22,
    status: "available"
  },
  {
    first_name: "Johanna",
    last_name: "bololo",
    login: "lolo3000",
    mail: "lolo@gmail.com",
    password: "blabla",
    gender: "female",
    age: 22,
    status: "available"
  },
]
user_attributes.each { |params| User.create(params) }
