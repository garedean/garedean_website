# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

projects = [
  {
    name: "Project Lotus",
    description: "an 'admin dashboard' with a focus on user interface design. My goal was to learn about the latest UX design trends while gaining experience with full stack Ruby on Rails development. This site was built with Ruby on Rails, jQuery, JavaScript, HTML & CSS.",
    url: "projectlotus.herokuapp.com"
  },
  {
    name: "Taste of Italy",
    description: "an app for ordering a pizza. The user can choose the size, toppings, and quantity, updating the price dynamically as the user makes choices. This app was built on the front end using HTML, CSS, and jQuery.",
    url: "soldier-cat-37223.bitballoon.com/"

  },
  {
    name: "Band Central",
    description: "an app that tracks bands and the venues they've played at. This project was completed in about four hours as part of an Epicodus assessment. This app was built with Sinatra, HTML, and CSS.",
    url: "shrouded-eyrie-1956.herokuapp.com/"
  }
]

projects.each do |project|
  Project.create(name: project[:name],
                 description: project[:description],
                 url: project[:url])
end

# Initial admin user
User.create(email: "garrettdolson@gmail.com", password: "123abc!!", admin: true)
