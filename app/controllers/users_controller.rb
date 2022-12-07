class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @request = Request.find(params[:request_id])
    @reviews = Review.where(reviewee: @user)
    @review = Review.new
    @books = Book.where(user_id: @user)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
