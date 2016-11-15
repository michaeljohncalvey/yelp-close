class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to 'restaurants/list'
  end

  def list
    render :action => "list"
  end

  def modify
  end

  def delete
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :blurb, :description)
  end
end
