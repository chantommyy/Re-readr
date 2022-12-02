class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy, :new]
  def show
    @review = Review.find(params[:user_id])
  end

  def index
    @user.id = User.find(params[:user_id])
    @reviews = Review.where(user_id: @user.id)
  end

  
  def new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @user = User.find(params[:user_id])
    @review.reviewee = @user
    if @review.save!
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
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
