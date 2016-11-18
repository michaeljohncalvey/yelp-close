class ReviewController < ApplicationController

  include ReviewHelper

  def create
    authenticate_user!
    @review = current_user.reviews.build(review_params)
    @review.save
    redirect_to controller: 'restaurants', action: 'show', id: "#{@review.restaurant_id}"
  end

  def destroy
  end

end
