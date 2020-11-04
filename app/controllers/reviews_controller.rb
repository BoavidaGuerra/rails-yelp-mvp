class ReviewsController < ApplicationController
  before_action :set_restaurant
  # get /restaurants/:restaurant_id/reviews/new
  def new
    # set_restaurant in before_action
    @review = Review.new
  end

  # post '/restaurants/:restaurant_id/reviews'
  # params = { review: { content: '' } }
  def create
    @review = Review.new(review_params)
    # here i have access to @restaurant from
    @review.restaurant = @restaurant

    if @review.save
      # redirect_to restaurant_path(@restaurant), notice: 'Your review was added!'
      redirect_to @restaurant, notice: 'Your review was added!'
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    # Only allow a trusted parameter "white list" through.
    params.require(:review).permit(:rating, :content)
  end
end
