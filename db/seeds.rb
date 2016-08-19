# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sport.destroy_all
sports = [
  {
    name: "basketball",
    photo_url: "https://www.sportscorner.qa/image/catalog/Blog/Basketball02.jpg"
  },
  {
    name: "baseball",
    photo_url: "http://2.bp.blogspot.com/-GAEriWtMPnk/UKjJZKNONzI/AAAAAAAAEDI/_wpbFtMvA08/s1600/HD-baseball-wallpapers-14.jpg"
  },
  {
    name: "rowing",
    photo_url: "http://static1.squarespace.com/static/5529b6d9e4b016252ff27c16/t/5536fcefe4b012ad8a2d4d8c/1429667058893/rowing_crew.jpg?format=1500w"
  },
  {
    name: "football",
    photo_url: "http://asfenris.fr/wp-content/uploads/2016/02/background-football.jpg"
  },
  {
    name: "soccer",
    photo_url: "https://www.radioscoop.com/imgs/89301_640_360.jpg"
  },
  {
    name: "tennis",
    photo_url: "http://www.club.fft.fr/asljltennis/31910022_d/data_1/jpg/ak/aktivurlaubsuedtirol_tennis_1.jpg"
  },
  {
    name: "curling",
    photo_url: "http://ekladata.com/8-Zrd9jknHT0RhOuBVdIWWQpOB0.jpg"
  },
  {
    name: "badminton",
    photo_url: "http://www.bhbc.fr/wp-content/uploads/2016/07/974746-badminton.jpg"
  },
  {
    name: "horse riding",
    photo_url: "http://data.whicdn.com/images/49368827/original.jpg"
  },
  {
    name: "handball",
    photo_url: "https://blog.scorenco.com/wp-content/uploads/2014/11/Handball.jpg"
  },
  {
    name: "rugby",
    photo_url: "http://business.lesechos.fr/images/2015/09/09/202649_du-rugby-pour-susciter-l-engagement-des-salaries-d-alstom-transport-web-tete-021293635085.jpg"
  },
  {
    name: "golf",
    photo_url: "http://www.viagolf.fr/wp-content/uploads/2016/03/aaa.jpg"
  },
  {
    name: "sexe",
    photo_url: "http://genevievecoteauteure.com/boutique/image/catalog/Image%20G.C/Fotolia_88901350_Subscription_Monthly_M.jpg"
  },
  {
    name: "woman football",
    photo_url: "http://imgview.info/download/20151012/women-adriana-lima-candice-swanepoel-lily-aldridge-behati-prinsloo-group-of-women-american-football-doutzen-kroes-helmet-sports-2560x1600.jpg"
  },
 {
    name: "Lacrosse",
    photo_url: "http://www.thehill.org/Customized/Uploads/ByDate/2015/July_2015/July_21st_2015/Boys%20Lax72824.JPG"
  },
  {
    name: "Hockey",
    photo_url: "http://www.lareleve.qc.ca/media/photos/unis/2016/02/18/2016-02-18-06-45-06-hockey.jpg"
  },
  {
    name: "Polo",
    photo_url: "http://karenine.com/wp-content/uploads/2013/12/polo-sport.jpg"
  },
  {
    name: "tir a l'arc",
    photo_url: "http://www.valjoly.com/wp-content/uploads/2013/07/tirAlArc-slide2.jpg"
  }
]
sports.each { |params| Sport.create(params) }

User.destroy_all
user_attributes = [
  {
    first_name: "Jonathan",
    last_name: "Bobo",
    email: "jojolapin@gmail.com",
    password: "blabla",
    gender: "male",
    birthday: Date.today - 7281,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    status: "available"
  },
  {
    first_name: "Paul",
    last_name: "Pot",
    email: "potpot@gmail.com",
    password: "blabla",
    gender: "male",
    birthday: Date.today - 7389,
    status: "available",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    photo_url: "http://www.elevagedelapin.fr/wp-content/uploads/2014/12/lapin-216311.jpg"

  },
  {
    first_name: "Lea",
    last_name: "Connor",
    email: "leaconnor@gmail.com",
    password: "blabla",
    gender: "female",
    birthday: Date.today - 7389,
    status: "available",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    photo_url: "http://www.elevagedelapin.fr/wp-content/uploads/2014/12/lapin-216311.jpg"

  },
  {
    first_name: "Emma",
    last_name: "Dupont",
    email: "emmadupont@gmail.com",
    password: "blabla",
    gender: "female",
    birthday: Date.today - 7389,
    status: "available",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    photo_url: "http://www.elevagedelapin.fr/wp-content/uploads/2014/12/lapin-216311.jpg"

  },
  {
    first_name: "Jacques",
    last_name: "Bordeaux",
    email: "jacquesbordeaux@gmail.com",
    password: "blabla",
    gender: "male",
    birthday: Date.today - 7389,
    status: "available",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    photo_url: "https://avatars.githubusercontent.com/u/20277922?v=3"

  },
  {
    first_name: "Paulo",
    last_name: "Robert",
    email: "paulorobert@gmail.com",
    password: "blabla",
    gender: "male",
    birthday: Date.today - 7389,
    status: "available",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    photo_url: "http://www.elevagedelapin.fr/wp-content/uploads/2014/12/lapin-216311.jpg"

  },
  {
    first_name: "Loan",
    last_name: "Robert",
    email: "loanrobert@gmail.com",
    password: "blabla",
    gender: "male",
    birthday: Date.today - 7389,
    status: "available",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    photo_url: "https://avatars.githubusercontent.com/u/20277922?v=3"

  },
  {
    first_name: "Poulou",
    last_name: "Boulobou",
    email: "bouloubo@gmail.com",
    password: "blabla",
    gender: "female",
    birthday: Date.today - 11526,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    status: "available"
  },
  {
    first_name: "Claire",
    last_name: "Bye",
    email: "clairye@gmail.com",
    password: "blabla",
    gender: "male",
    birthday: Date.today - 2018,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    status: "available"
  },
  {
    first_name: "John",
    last_name: "bobo",
    email: "johni@gmail.com",
    password: "blabla",
    gender: "male",
    birthday: Date.today - 6378,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    status: "available"
  },
  {
    first_name: "Johanna",
    last_name: "bololo",
    email: "lolo@gmail.com",
    password: "blabla",
    gender: "female",
    birthday: Date.today - 156,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    status: "available"
  },
]
user_attributes.each { |params| User.create(params) }


Place.destroy_all
places_attributes = [
  {
    name: "Racing Club de France",
    address: "154 Rue de Saussure, 75017, Paris, France",
    description: "Very fancy dear Sir"
  },
  {
    name: "Polo de Paris",
    address: " Route des Moulins, 75116 Paris, France",
    description: "Ever more fancy"
  }
]
places_attributes.each { |params| Place.create(params) }

Event.destroy_all
events_attributes = [
  {
    name: "tournoi amateur",
    required_level: "2",
    required_material: "true",
    status: "open",
    sport: Sport.all.sample,
    date: Date.tomorrow,
    time: Time.now,
    user: User.all.sample,
    address: "Pessac, France",
    number_of_players: 4
  },
  {
    name: "Sport co",
    required_level: "3",
    required_material: "true",
    status: "open",
    sport: Sport.all.sample,
    date: Date.tomorrow,
    time: Time.now,
    user: User.all.sample,
    address: "Bordeaux, France",
    number_of_players: 4
  },
  {
    name: "MyEvent#1",
    required_level: "1",
    required_material: "true",
    status: "waiting list",
    sport: Sport.all.sample,
    date: Date.tomorrow,
    time: Time.now,
    user: User.all.sample,
    address: "Lille, France",
    number_of_players: 4
  },
  {
    name: "MyEvent#2",
    required_level: "1",
    required_material: "true",
    status: "waiting list",
    sport: Sport.all.sample,
    date: Date.tomorrow,
    time: Time.now,
    user: User.all.sample,
    address: "Toulouse, France",
    number_of_players: 4
  },
  {
    name: "MyEvent#3",
    required_level: "1",
    required_material: "true",
    status: "waiting list",
    sport: Sport.all.sample,
    date: Date.tomorrow,
    time: Time.now,
    user: User.all.sample,
    address: "Toulon, France",
    number_of_players: 4
  },
  {
    name: "MyEvent#4",
    required_level: "1",
    required_material: "true",
    status: "waiting list",
    sport: Sport.all.sample,
    date: Date.tomorrow,
    time: Time.now,
    user: User.all.sample,
    address: "Nantes, France",
    number_of_players: 4
  },
  {
    name: "MyEvent#5",
    required_level: "1",
    required_material: "true",
    status: "waiting list",
    sport: Sport.all.sample,
    date: Date.tomorrow,
    time: Time.now,
    user: User.all.sample,
    address: "Brest, France",
    number_of_players: 4
  },
  {
    name: "MyEvent#6",
    required_level: "1",
    required_material: "true",
    status: "waiting list",
    sport: Sport.all.sample,
    date: Date.tomorrow,
    time: Time.now,
    user: User.all.sample,
    address: "Strasbourg, France",
    number_of_players: 4
  },
  {
    name: "MyEvent#7",
    required_level: "1",
    required_material: "true",
    status: "waiting list",
    sport: Sport.all.sample,
    date: Date.tomorrow,
    time: Time.now,
    user: User.all.sample,
    address: "Toulouse, France",
    number_of_players: 4
  },
  {
    name: "Qui est partant?",
    required_level: "2",
    required_material: "true",
    status: "open",
    sport: Sport.all.sample,
    date: Date.tomorrow,
    time: Time.now,
    user: User.all.sample,
    address: "101 Allée quai des Chartrons, Bordeaux, France",
    number_of_players: 4
  },
  {
    name: "Allez on se chauffe !",
    required_level: "4",
    required_material: "true",
    status: "waiting list",
    sport: Sport.all.sample,
    date: Date.tomorrow,
    time: Time.now,
    user: User.all.sample,
    address: "17 Place de la bourse, Bordeaux, France",
    number_of_players: 4
  }
]
events_attributes.each { |params| Event.create(params) }

Message.destroy_all

messages_attributes = []
Event.all.each do |event|
    messages_attributes << {
      content: "Bienvenue sur le tchat !",
      event: event,
      participation: Participation.new(status: "orgaiser", user: User.all.sample, event: event)
    }
end
messages_attributes.each { |params| Message.create(params) }













