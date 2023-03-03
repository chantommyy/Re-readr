require 'rest-client'
require 'json'
require 'open-uri'

class BooksController < ApplicationController
  #before_action filter means dont need to reuse set_book
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all.reject { |b| Swap.where(book: b).any? || Swap.select { |s| s.request.book == b }.any? }.reverse
  end

  def show
    @reviews = Review.all
    @request = Request.new
  end

  def new
    @book = Book.new
  end

  # def create
  #   response = RestClient.get("https://api2.isbndb.com/book/#{book_params["barcode"]}", {accept: 'application/json', Authorization: '48828_4ec0d4456ee0bfe47c0b200f5528b2c6'})
  #   repos = JSON.parse(response)
  #   book = repos["book"]
  #   @book = Book.new(
  #     barcode: book["isbn"],
  #     name: book["title"],
  #     author: book["authors"] ? book["authors"] : "unknown author",
  #     photo: book["image"],
  #     description: book["synopsis"],
  #     genre: book["subjects"] ? book["subjects"][0] : "Thriller",
  #     user_id: current_user.id
  #   )
  #   if @book.save
  #     redirect_to books_path(@book)
  #   else
  #     render :new, status: :unrprocessable_entity
  #   end
  # end

  # TESTING
  def create
    @book = Book.new(book_params)
    url = "https://www.googleapis.com/books/v1/volumes?q=isbn:#{@book.barcode}"

    response = URI.open(url).read
    @repos = JSON.parse(response)

    if @repos["totalItems"].zero?
      flash[:alert] = "that isbn didn't work"
      return render :new
    end

    @book.name = api_hash[0]["volumeInfo"]["title"]
    @book.author = api_hash[0]["volumeInfo"]["authors"]
    @book.photo = api_hash[0]["volumeInfo"]["imageLinks"]["thumbnail"]
    @book.description = api_hash[0]["volumeInfo"]["description"]

    @book.user = current_user
    @book.save
    redirect_to books_path(@book)
  end

  def api_hash
    @repos["items"].select{ |item| item["volumeInfo"]["imageLinks"]["thumbnail"].gsub("zoom=1", "zoom=0") }
  end


  def find_image
    images = api_hash["imageLinks"]
    if images
      image = images["thumbnail"]
      URI.open(image)
    else
      use_open_library("L")
    end
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
    params.require(:book).permit(:genre, :name, :author, :photo, :condition, :barcode)
  end
end
