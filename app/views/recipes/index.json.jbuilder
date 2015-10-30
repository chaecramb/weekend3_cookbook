json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :instructions, :published_on
  json.url recipe_url(recipe, format: :json)
end
