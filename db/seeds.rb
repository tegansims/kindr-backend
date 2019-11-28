# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Pick.destroy_all
Group.destroy_all
Name.destroy_all
User_group.destroy_all

User.create(name:'tegan', email: 'tegan@tegan.com', password_digest: 'tegan')
User.create(name:'bethan', email: 'bethan@bethan.com', password_digest: 'bethan')

100.times do 
    girl_name = Faker::Name.unique.female_first_name 
    Name.create(name: girl_name, gender: "Female")
    end

100.times do 
    boy_name = Faker::Name.unique.male_first_name 
    Name.create(name: boy_name, gender: "Male")
    end

