class ReviewController < ApplicationController
  def new
    @review = Review.new(review_params)
    @review.save
    redirect_to '/restaurants/list'
  end

  def delete
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
