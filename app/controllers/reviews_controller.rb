class ReviewsController < ApplicationController
end

def index
  @book = Book.all
end
