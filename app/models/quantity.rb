class Quantity < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient

  validates :quantity, length: { in: 1..20 }
  validate :unique_for_recipe

  def unique_for_recipe
    errors.add(:recipe_id, "already has a quantity for this ingredient") if Recipe.find(recipe_id).quantities.map { |q| q.recipe_id == recipe_id }.any?
  end

end