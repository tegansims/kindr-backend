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
UserGroup.destroy_all

User.create(name:'tegan', email: 'tegan@tegan.com', password_digest: 'tegan')
User.create(name:'bethan', email: 'bethan@bethan.com', password_digest: 'bethan')

100.times do 
    Name.create(name: Name.create_from_API('m'), gender: 'm')
    end

100.times do 
    Name.create(name: Name.create_from_API('f'), gender: 'f')
    end

