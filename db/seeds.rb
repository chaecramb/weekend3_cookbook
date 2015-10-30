# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.delete_all
Recipe.create([
  {
    :title         => "Porridge",
    :instructions  => "Get oats, get bowl, get milk, heat.\nAdd apples.",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 1
  },
  {
    :title         => "Scrambled eggs",
    :instructions  => "Crack eggs in bowl.\nHeat.",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 1
  },
  {
    :title         => "Salad",
    :instructions  => "Put leaves, tomatoes, cucumber and apples in bowl.\nEat.",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 2
  },
  {
    :title         => "Macoroni cheese",
    :instructions  => "Cheese, pasta, heat.\nYum.",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 2
  },
  {
    :title         => "Pumpkin pie",
    :instructions  => "Bake pumpkins in pie",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 3
  },
  {
    :title         => "Carbonara",
    :instructions  => "Heat pasta with eggs, cheese, and bacon",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 3
  },
  {
    :title         => "Apple pie",
    :instructions  => "Puts apples in pie.\nHeat.",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 4
  },
  {
    :title         => "Apple crumble",
    :instructions  => "Sugar and apples, top with biscuit and oats",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 4
  }
])

Category.delete_all
Category.create([
  {
    :name => "Breakfast",
  },
  {
    :name => "Lunch",
  },
  {
    :name => "Dinner",
  },
  {
    :name => "Desert",
  }
])

Ingredient.delete_all
oats = Ingredient.create( :name => "Oats" )
milk = Ingredient.create( :name => "Milk" )
eggs = Ingredient.create( :name => "Eggs" )
apples = Ingredient.create( :name => "Apples" )
cheese = Ingredient.create( :name => "Cheese" )
pasta = Ingredient.create( :name => "Pasta" )
lettuce = Ingredient.create( :name => "Lettuce" )
tomato = Ingredient.create( :name => "Tomato" )
cucumber = Ingredient.create( :name => "Cucumber" )
pumpkin = Ingredient.create( :name => "Pumpkin" )
bacon = Ingredient.create( :name => "Bacon" )
biscuits = Ingredient.create( :name => "Biscuits" )

Recipe.first.ingredients << oats << milk << apples
Recipe.first(2).last.ingredients << eggs
Recipe.first(3).last.ingredients << apples << lettuce << tomato << cucumber
Recipe.first(4).last.ingredients << cheese << pasta
Recipe.first(5).last.ingredients << pumpkin
Recipe.first(6).last.ingredients << pasta << eggs << cheese << bacon
Recipe.first(7).last.ingredients << apples
Recipe.last.ingredients << apples << biscuits << oats

