class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]
    
    #READ
    
    def index
        #binding.pry
        # if params[:genre_id]
        #     @genre = Genre.find_by(params[:genre])
        #     @books = @genre.books
        # else
        #     @books = Book.all
        # end
    end

    
    def show
        #@books = Book.find_by(id: params[:id])
        #@books = Book.find_by_id(params)
    end

    #CREATE
    
    def new
        @book = Book.new
    end

    
    def create
        @book = Book.new(book_params)
        if @donation.save 
            redirect_to book_path(@book)
        else
            rende :new
        end 
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
    @book = Book.find_by_id(params)
    end

    # Only allow a list of trusted parameters through.
    def book_params
    params.require(:book).permit(:title, :author)
    end


