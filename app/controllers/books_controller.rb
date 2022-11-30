class BooksController < ApplicationController
  #before_action filter means dont need to reuse set_book
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
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
  end

  def new
    @book = Book.new
  end

  def update
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  def destroy
    @book.delete
    redirect_to books_path, status: :see_other
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:genre, :name, :author, :photo, :condition)
  end


end
