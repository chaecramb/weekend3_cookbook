class RecipesController < ApplicationController

  load_and_authorize_resource

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.filter(params.slice(:search))
    @recipe = Recipe.new
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)
    if params['ingredients']
      params['ingredients'].each do |ingredient_name|
        @recipe.ingredients << Ingredient.find_by(name: ingredient_name)
      end
    end

    @recipe.save 
    redirect_to recipes_path
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    @recipe.ingredients.clear
    params['ingredients'].each do |ingredient_name|
      @recipe.ingredients << Ingredient.find_by(name: ingredient_name)
    end

    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:title, :instructions, :published_on, :category_id, :image, :recipe_image)
    end
end
