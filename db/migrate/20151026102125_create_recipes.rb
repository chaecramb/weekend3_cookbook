class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :instructions
      t.date :published_on

      t.timestamps null: false
    end
  end
end
