class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]
    
    #READ
    
    def index
    @books = Book.all
    end

    
    def show
    end

    #CREATE
    
    def new
        @book = Book.new
    end

    
    def create
        @book = Book.new(book_params)
    end

    #UPDATE

    def edit
    end

    
    def update
    end

    
    #DELETE

    def destroy
        @book.destroy
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
    @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
    params.require(:book).permit(:title, :author)
    end


