class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
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
    # @review = Review.find(params[:user_id])
    @review = Review.new
  end

  # <%# index is currently showing reviews for every book, i have tried to make a custom method "reviews#own" that is nested to only show reviews for the :id, eg the review where :id=1 %>
  def own
    @reviews = Review.where(user_id: current_user)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def show
    @review = Review.find(params[:user_id])
  end
end
