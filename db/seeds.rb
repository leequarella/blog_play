# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'bob', password: '123', email: 'bob@asdf.com')
User.create(username: 'Joe', password: '123', email: 'joe@asdf.com')
User.create(username: 'alice', password: '123', email: 'alice@asdf.com')
