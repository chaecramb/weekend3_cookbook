class Quantity < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient

  #validate :unique_for_recipe

  def unique_for_recipe 
    #errors.add(:recipe_id, "already has a quantity for this ingredient") if Recipe.find(recipe_id).quantities.map { |q| q.ingredient_id == ingredient_id }.any?
  end

end
