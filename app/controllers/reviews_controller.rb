class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.book = @book
    @review.save
    redirect_to book_path(@book)
  end

  def new
    @review = Review.new
  end

  def index
    @book = Book.all
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def show
    @review = Review.find
  end
end
