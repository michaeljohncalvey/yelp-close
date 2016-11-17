class RestaurantsController < ApplicationController
  before_action :authenticate_user!

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
  end

  def destroy
  end

  def show
    @restaurant = Restaurant.where(id: params[:id])[0]
    @reviews = Review.where(restaurant_id: @restaurant.id)
    @review = Review.new
    @reviews.each do |review|
      @reviewer = User.find(current_user.id)
    end
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
