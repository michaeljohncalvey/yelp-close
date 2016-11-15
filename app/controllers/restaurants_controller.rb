class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
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
end
