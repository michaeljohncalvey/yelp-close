module RestaurantsHelper
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
