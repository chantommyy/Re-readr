class BooksController < ApplicationController
  #before_action filter means dont need to reuse set_book
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
    @reviews = Review.all
  end

  def new
    @book = Book.new
  end

  def create
    response = RestClient.get("https://api2.isbndb.com/book/9781566190930", {accept: 'application/json', Authorization: '48828_4ec0d4456ee0bfe47c0b200f5528b2c6'})
    repos = JSON.parse(response)
    @books = repos["books"]
    @book = Book.new(
      name: book["title"],
      author: book["authors"],
      photo: book["image"],
      genre: book["subjects"][0],
      user_id: current_user.id
    )
    if @book.save
      redirect_to books_path(@book)
    else
      render :new, status: :unrprocessable_entity
    end
  end

  def get_book_info(barcode)
    
  end

    # @book = Book.create(book_params)

    # when validations added
    # if @book.save
    #   redirect_to book_path(@book)
    # else
    #   render :new, status: :unrprocessable_entity
  # end

  def edit
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
