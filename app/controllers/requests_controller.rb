class RequestsController < ApplicationController

  def index
    @requests = Request.where(user_id: current_user)
  end

  def create
    @request = Request.new
    @request.save
    @book = Book.find(params[:book_id])
    @request.user = current_user
    @request.book = @book
    if @request.save
      redirect_to mydashboard_path
    else
      render 'books/show', status: :unrprocessable_entity
    end
  end

  # def destroy
  #   @request = request.find(params[:id])
  #   @request.destroy
  #   redirect_to mydashboard_path(@request), status: :see_other
  # end




  private

  def request_params
    params.require(:request).permit()
  end
end
