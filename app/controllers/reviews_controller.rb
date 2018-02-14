class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create]

  def create
    @review = Review.new(review_params)
    # set restaurant to review
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
      # redirect to restaurants#show
    else
      render "restaurants/show"
    end
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
