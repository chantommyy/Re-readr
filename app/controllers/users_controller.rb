class UsersController < ApplicationController


  def show
    # @reviews = @user.reviews
    @user = User.find(params[:id])
    @reviews =  Review.where(reviewee: @user)
    @review = Review.new
  end


  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end




