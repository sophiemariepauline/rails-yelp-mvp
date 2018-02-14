class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]


  def index
    @restaurants = Restaurant.all    # GET /restaurants
  end

  def new
    @restaurant = Restaurant.new       # GET /restaurants/new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)       # POST /restaurants
  end

  def show
     @review = Review.new     # GET /restaurants/:id
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone, :category)
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end



