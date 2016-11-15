class RestaurantsController < ApplicationController
  def new
  end

  def list
    Restaurant.create(name: "Felix's Firey Fish Fingers", description: "It's one of the best, the food is so fiery, the food is so great.", blurb: "An amazingly arduous amorphous adventure")
    @restaurants = Restaurant.all
    render :action => "list"
  end

  def modify
  end

  def delete
  end
end
