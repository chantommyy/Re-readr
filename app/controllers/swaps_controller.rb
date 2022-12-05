class SwapsController < ApplicationController

  def create
    # @user = User.find(params[:id])
    @swap = Swap.new
    @swap.user = current_user
    @request = Request.find(params[:request_id])
    @swap.book = Book.find(params["book_id"])
    @swap.request = @request
    if @swap.save
      redirect_to mydashboard_path
    else
      render 'mydashboard', status: :unrprocessable_entity
    end
  end


  # private

  # def swap_params
  #   params.require(:swap).permit(:book_id, :user_id, :status)
  # end
end
