class ReviewController < ApplicationController

  include ReviewHelper

  def create
    authenticate_user!
    if current_user.has_reviewed?(Restaurant.find(params["review"]["restaurant_id"]))
      alert = 'You have already reviewed this restaurant'
    else
      @review = current_user.reviews.build(review_params)
      @review.save
      alert = ""
    end
    flash[:notice] = alert
    redirect_to controller: 'restaurants', action: 'show', id: "#{params["review"]["restaurant_id"]}"
  end

  def destroy
  end

end
