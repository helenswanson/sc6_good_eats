class ReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant_id = @restaurant.id

    if @review.save
      flash[:notice] = "Success!"
    else
      flash.now[:notice] = "Your review couldn't be submitted."
    end
    redirect_to "/restaurants/#{@restaurant.id}"
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end


end
