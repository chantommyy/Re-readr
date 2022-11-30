class ReviewsController < ApplicationController

  def index
    @reviews = User.review.all
  end
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to user_reviews_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @review = Review.new
  end

  def index
    @reviews = Review.all
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def show
    @review = Review.find(params[:user_id])
  end
end
