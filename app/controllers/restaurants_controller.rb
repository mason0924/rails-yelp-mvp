class RestaurantsController < ApplicationController
  before_action :set_restaurant,  only: [:show, :chef, :edit, :update, :destroy]
  
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new #re-render the form
    end
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id]) # find single restaurant by ID
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end

