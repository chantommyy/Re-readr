class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  # def show
  #   @review = Review.find(params[:user_id])
  # end

  # def index
  #   @user.id = User.find(params[:user_id])
  #   @reviews = Review.where(user_id: @user.id)
  # end

  def create
    @review = Review.new(review_params)
    @user = User.find(params[:user_id])
    @review.user = current_user
    @review.reviewee = @user
    @request = Request.find(params[:request_id])
    if @review.save
      redirect_to request_user_path(@request, @user)
    else
      flash.notice = "You haz errors!"
    end
  end

  private

  def set_review
    @user = User.find(params[:user_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
