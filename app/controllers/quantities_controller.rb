class QuantitiesController < ApplicationController

  load_and_authorize_resource

  def index
    @quantities = Quantity.all
    @quantity = Quantity.new
  end

  def new
    @quantity = Quantity.new  end

  def create
    Quantity.create(quantity_params) unless Quantity.find_by(quantity_params)
    redirect_to(quantities_path)
  end

  def show
    @quantity = Quantity.find(params[:id])
  end

  def update
    quantity = Quantity.find(params[:id])
    quantity.update(quantity_params)
    redirect_to quantity
  end

  def destroy
    Quantity.find(params[:id]).destroy
    redirect_to(quantities_path)
  end

  private
    def quantity_params
      params.require(:quantity).permit(:quantity, :ingredient_id, :recipe_id)
    end

end
