class Category < ActiveRecord::Base
  has_many :recipes

  validates :name, length: { in: 1..50 }

end
