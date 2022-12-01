class ReviewsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @reviews = Review.where(user_id: @user.id)
    @user = User.find(params[:user_id])
    # @review = Review.where(user_id: @user.reviews)
  end

  def show
    @review = Review.find(params[:user_id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    if @review.save
      redirect_to user_reviews_path(:user_id)
    else
      render :new, status: :unprocessable_entity
    end
  end
  

  # <%# index is currently showing reviews for every book, i have tried to make a custom method "reviews#own" that is nested to only show reviews for the :id, eg the review where :id=1 %>


  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
