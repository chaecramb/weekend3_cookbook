class IngredientsController < ApplicationController

  load_and_authorize_resource

  def index
    @ingredients = Ingredient.all
    @ingredient = Ingredient.new
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    Ingredient.create(ingredient_params) unless Ingredient.find_by(ingredient_params)
    redirect_to(ingredients_path)
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def destroy
    Ingredient.find(params[:id]).destroy
    redirect_to(ingredients_path)
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    ingredient = Ingredient.find(params[:id])
    ingredient.update(ingredient_params)
    redirect_to ingredient
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name)
    end
end