module ReviewHelper
  private

  def review_params
    params.require(:review).permit(:rating, :comment, :restaurant_id)
  end
end
