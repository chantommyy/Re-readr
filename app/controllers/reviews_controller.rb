class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:user_id])
  end

  def index
    @user.id = User.find(params[:user_id])
    @reviews = Review.where(user_id: @user.id)
  end


  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to user_reviews_path(@user, :reviews)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :user_id)
  end
end
