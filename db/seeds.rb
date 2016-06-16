# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.delete_all

Post.create( content: "Pizza is yummy!"                    )
Post.create( content: "Veggies are tasty and nutritious."  )
Post.create( content: "Salt is the best ingredient."       )

Post.create( content: "I've seen Star Wars 23 times."      )
Post.create( content: "Walking Dead has an exciting plot." )
Post.create( content: "I only watch art-house films."      )

Post.create( content: "My cats are cute!"      )
Post.create( content: "Dogs are good friends."  )
Post.create( content: "My hamster resents me." )

Post.create( content: "Free market solves all problems."         )
Post.create( content: "Workers control the means of production." )
Post.create( content: "Can't we all just get along?"             )

User.delete_all

frank = User.create( email: 'frank@ex.com', password: 'abcd1234' )
alice = User.create( email: 'alice@ex.com', password: 'abcd1234' )
anton = User.create( email: 'anton@ex.com', password: 'abcd1234' )
