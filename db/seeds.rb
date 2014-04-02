# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if Permission.first.nil?
  Permission.create(name: 'normal')
  Permission.create(name: 'admin')
end

if User.first.nil?
  user = User.create!(email: 'scott512981271@qq.com',password: '123123',password_confirmation: '123123', permission_id: 2)
  user.create_user_detail name: 'Scott1743'

  user = User.create!(email: 'test@c.c', password: '123123', password_confirmation: '123123')
  user.create_user_detail name: 'Tester'
end