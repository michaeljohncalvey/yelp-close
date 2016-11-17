class ReviewController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to controller: 'restaurants', action: 'view', id: "#{@review.restaurant_id}"
  end

  def delete
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :restaurant_id)
  end
end
