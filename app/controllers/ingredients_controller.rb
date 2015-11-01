class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
    @ingredient = Ingredient.new
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    Ingredient.create(category_params) unless Ingredient.find_by(category_params)
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
    ingredient.update(category_params)
    redirect_to ingredient
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:ingredient).permit(:name)
    end
end