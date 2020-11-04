class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show]
  def index
    @restaurants = Restaurant.all
  end

  def show; end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    # Only allow a trusted parameter "white list" through.
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
