class QuantitiesController < ApplicationController
  def index
    @quantities = Quantity.all
    @quantity = Quantity.new
  end

  def new
    @quantity = Quantity.new  end

  def create
    Quantity.create(category_params) unless Quantity.find_by(category_params)
    redirect_to(quantities_path)
  end

  def show
    @quantity = Quantity.find(params[:id])
  end

  def update
    quantity = Quantity.find(params[:id])
    quantity.update(category_params)
    redirect_to quantity
  end

  def destroy
    Quantity.find(params[:id]).destroy
    redirect_to(quantities_path)
  end

  private
    def category_params
      params.require(:quantity).permit(:quantity, :ingredient_id, :recipe_id)
    end

end
