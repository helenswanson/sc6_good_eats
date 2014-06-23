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

    if @review.save
      flash[:notice] = "Success!"
    else
      flash.now[:notice] = "Your review couldn't be submitted."
    end
    redirect_to @restaurant
  end

  private

  def review_params
    results = params.require(:review).permit(:rating, :body)
    results[:restaurant_id] = params[:restaurant_id]
    results
  end


end
