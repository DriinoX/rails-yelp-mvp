class RestaurantsController < ApplicationController
  #GET  /restaurants
  def index
    @restaurants = Restaurant.all
  end

  #GET  /restaurants/:id
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  #GET  /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  #POST /restaurants
  def create
    @restaurant = Restaurant.new(param_restaurant)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def param_restaurant
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
