class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.save
    redirect_to user_requests_path(@request)
  end

  private

  def request_params
    params.require(:request)
  end
end
