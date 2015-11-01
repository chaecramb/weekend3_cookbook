class Recipe < ActiveRecord::Base
  include Filterable

  belongs_to :category
  has_and_belongs_to_many :ingredients

  def self.search(term)
    (Recipe.where("title ILIKE (?)", "%#{term}%").to_a + Recipe.all.select { |r| !r.ingredients.map{|i| i.name}.select{|i| !!i.downcase.match(term.downcase)}.empty?}).uniq
    
  end
end



