class ReviewController < ApplicationController

  def create
    authenticate_user!
    @review = current_user.reviews.build(review_params)
    @review.save
    redirect_to controller: 'restaurants', action: 'show', id: "#{@review.restaurant_id}"
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :restaurant_id)
  end
end
