class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.book = @book
    @review.save
    redirect_to book_path(@book)
  end

  def new
    @review = Review.find(params[:user_id])
    @review = Review.new
  end

  def index
    @book = Book.all
  end

  def show
    @review = Review.find
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
