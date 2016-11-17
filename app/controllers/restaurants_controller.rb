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
    @restaurant = Restaurant.where(id: params[:id])[0]
    @reviews = Review.where(restaurant_id: @restaurant.id)
    @review = Review.new
    gmaps_marker
    render action: "view_restaurant"
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :blurb, :description, :postcode)
  end

  def gmaps_marker
    @hash = Gmaps4rails.build_markers(@restaurant) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
      marker.infowindow restaurant.name
    end
  end

end
