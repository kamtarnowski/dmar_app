# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Opinion.delete_all
User.delete_all

array = ['14239003.jpg',
         '14239056.jpg',
         'Cody-Shelton-600x600.jpg',
         'Daniel-Gonzalez-600x600.jpg',
         'David-Beckham-New-Hairstyle-2012-david-beckham-30515174-1707-2560.jpg',
         'French-soccer-player-Laure-Boulleau-can-give-Hollywood-actress-a-run-for-their-money-beacuse-of-her-radiant-looks-and-a-well-toned-figure.jpg',
         'full_4633.jpg',
         'gerard-pique.jpg',
         'Joaquin-Rivas-600x600.jpg',
         'ozil-for-box.jpg',
         'soc_g_ronaldoc_600.jpg',
         'us-soccer-damarcus-beasley-lalas-hair-1.jpg']

n = 1
10.times do
  User.create(email: "email#{n}@gmail.com", name: Faker::Name.name, password: 'password', password_confirmation: 'password', avatar: File.open("#{Rails.root}/public/users/#{array.sample}"))
  n += 1
end

User.all.each do |user|
  user.create_opinion(content: Faker::Lorem.sentence(10), status: true)
end