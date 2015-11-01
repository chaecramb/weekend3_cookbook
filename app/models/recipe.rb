class Recipe < ActiveRecord::Base
  include Filterable

  belongs_to :category
  has_and_belongs_to_many :ingredients

  def self.search(term)
    Recipe.where("title ILIKE (?)", "%#{term}%")
  end
end
