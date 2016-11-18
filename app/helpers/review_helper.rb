module ReviewHelper

  def star_rating(rating)
    return rating unless rating.respond_to?(:round)
    remainder = (5 - rating.round)
    "★" * rating.round + "☆" * remainder
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :restaurant_id)
  end


end
