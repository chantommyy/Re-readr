class UsersController < ApplicationController
  def show
    # @reviews = @user.reviews
    @user = User.find(params[:id])
  end
end
