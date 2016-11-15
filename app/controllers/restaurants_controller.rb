class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to '/restaurants/list'
  end

  def list
    @restaurants = Restaurant.all
    render :action => "list"
  end

  def modify
  end

  def delete
  end

  def view
    @restaurant = Restaurant.where(id: params[:id])
    @name = @restaurant[0].name
    @blurb = @restaurant[0].blurb
    @description = @restaurant[0].description
    render action: "view_restaurant"
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :blurb, :description)
  end
end
