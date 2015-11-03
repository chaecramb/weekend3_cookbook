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
    :category_id   => 1,
    :image         => "http://nourishedkitchen.com/wp-content/uploads/2012/02/porridge-featured.jpg"
  },
  {
    :title         => "Scrambled eggs",
    :instructions  => "Crack eggs in bowl.\nHeat.",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 1,
    :image         => "http://vitalfarms.com/wp-content/uploads/2014/02/scrambled-eggs.jpg"
  },
  {
    :title         => "Salad",
    :instructions  => "Put leaves, tomatoes, cucumber and apples in bowl.\nEat.",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 2,
    :image         => "https://upload.wikimedia.org/wikipedia/commons/a/a8/Salad_platter02_crop.jpg"
  },
  {
    :title         => "Macoroni cheese",
    :instructions  => "Cheese, pasta, heat.\nYum.",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 2,
    :image         => "http://images.sweetauthoring.com/recipe/38659_593.jpg"
  },
  {
    :title         => "Pumpkin pie",
    :instructions  => "Bake pumpkins in pie",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 3,
    :image         => "http://images.edge-generalmills.com/8a040ff8-fb39-48a2-ba4b-fa73f199bc2f.jpg"
  },
  {
    :title         => "Carbonara",
    :instructions  => "Heat pasta with eggs, cheese, and bacon",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 3,
    :image         => "http://www.foodandtravelfun.com/wp-content/uploads/2015/04/pasta-carbonara.jpg"
  },
  {
    :title         => "Apple pie",
    :instructions  => "Puts apples in pie.\nHeat.",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 4,
    :image         => "http://images.edge-generalmills.com/b89a36f2-7994-4560-9ad6-085fda9163f0.jpg"
  },
  {
    :title         => "Apple crumble",
    :instructions  => "Sugar and apples, top with biscuit and oats",
    :published_on  => DateTime.new(2015,10,30),
    :category_id   => 4,
    :image         => "http://ichef.bbci.co.uk/food/ic/food_16x9_608/recipes/applecrumble_89166_16x9.jpg"
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
    :name => "Dessert",
  }
])

Ingredient.delete_all
Ingredient.create( :name => "Oats" )
Ingredient.create( :name => "Milk" )
Ingredient.create( :name => "Eggs" )
Ingredient.create( :name => "Apples" )
Ingredient.create( :name => "Cheese" )
Ingredient.create( :name => "Pasta" )
Ingredient.create( :name => "Lettuce" )
Ingredient.create( :name => "Tomato" )
Ingredient.create( :name => "Cucumber" )
Ingredient.create( :name => "Pumpkin" )
Ingredient.create( :name => "Bacon" )
Ingredient.create( :name => "Biscuits" )

Quantity.create(recipe_id: 1, ingredient_id: 1, quantity: 'one cup')
Quantity.create(recipe_id: 1, ingredient_id: 2, quantity: '200ml')
Quantity.create(recipe_id: 2, ingredient_id: 3, quantity: '3')
Quantity.create(recipe_id: 3, ingredient_id: 7, quantity: 'a bunch')
Quantity.create(recipe_id: 3, ingredient_id: 8, quantity: '4')
Quantity.create(recipe_id: 3, ingredient_id: 9, quantity: 'some')
Quantity.create(recipe_id: 4, ingredient_id: 5, quantity: '40g')
Quantity.create(recipe_id: 4, ingredient_id: 6, quantity: '100g')
Quantity.create(recipe_id: 5, ingredient_id: 10, quantity: '100g')
Quantity.create(recipe_id: 6, ingredient_id: 5, quantity: '20g')
Quantity.create(recipe_id: 6, ingredient_id: 6, quantity: '100g')
Quantity.create(recipe_id: 6, ingredient_id: 3, quantity: '1')
Quantity.create(recipe_id: 6, ingredient_id: 11, quantity: '3 pieces')
Quantity.create(recipe_id: 7, ingredient_id: 4, quantity: '3')
Quantity.create(recipe_id: 8, ingredient_id: 4, quantity: '4')
Quantity.create(recipe_id: 8, ingredient_id: 12, quantity: '200g')
Quantity.create(recipe_id: 8, ingredient_id: 4, quantity: '50g')

User.create(name: 'admin', role: 'admin', email: 'bigdog@cookbook.com', password: 'password')

