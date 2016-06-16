# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Users ------------------------------------------------------------------------
User.delete_all

frank = User.create( email: 'frank@ex.com', password: 'abcd1234' )
alice = User.create( email: 'alice@ex.com', password: 'abcd1234' )
anton = User.create( email: 'anton@ex.com', password: 'abcd1234' )

# Posts ------------------------------------------------------------------------
Post.delete_all

Post.create( content: "Pizza is yummy!"                   , user: frank )
Post.create( content: "Veggies are tasty and nutritious." , user: alice )
Post.create( content: "Salt is the best ingredient."      , user: anton )

Post.create( content: "I've seen Star Wars 23 times."      , user: frank )
Post.create( content: "Walking Dead has an exciting plot." , user: alice )
Post.create( content: "I only watch art-house films."      , user: anton )

Post.create( content: "My cats are cute!"      , user: frank )
Post.create( content: "Dogs are good friends." , user: alice )
Post.create( content: "My hamster resents me." , user: anton )

Post.create( content: "Free market solves all problems."         , user: frank )
Post.create( content: "Workers control the means of production." , user: alice )
Post.create( content: "Can't we all just get along?"             , user: anton )
