class BooksController < ApplicationController
  #add a before action set_book
  #before_action :set_book, only: [:index, :show, :update, :create]

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:index])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    @book.save
    redirect_to book_path(@book)
    # when validations added
    # if @book.save
    #   redirect_to book_path(@book)
    # else
    #   render :new, status: :unrprocessable_entity
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_booth(@book)
  end

  private

  def book_params
    params.require(:books).permit(:genre, :name, :author, :photo, :condition)
  end
end
