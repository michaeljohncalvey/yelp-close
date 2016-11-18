class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to '/'
  end

  def index
    @restaurants = Restaurant.all
    render :action => "index"
  end

  def edit
    @restaurant = Restaurant.where(id: params[:id])[0]
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update_attributes(restaurant_params)
    redirect_to controller: 'restaurants', action: 'show', id: "#{@restaurant.id}"
  end

  def destroy
    Restaurant.find(params[:id]).destroy
    redirect_to '/'
  end

  def show
    @restaurant = Restaurant.where(id: params[:id])[0]
    @reviews = Review.where(restaurant_id: @restaurant.id)
    @review = Review.new
    gmaps_marker
    render action: "show"
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
