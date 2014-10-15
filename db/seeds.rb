# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'creating users'
(1..10).each do |i|
  user = User.create(email: "test#{i}@sunny.com", password: 'password', username: "sunny_user_#{i}", mobile_phone: "18#{i}21#{i}8#{i}")
end

puts 'creating admin users...'
AdminUser.create(
  email: 'admin@sunny.com',
  password: 'password'
)
puts "crate example user success"