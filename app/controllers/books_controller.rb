class BooksController < ApplicationController
    def index 
        @books = Book.all 
        render json: @books
    end 

    def create 
        @book= Book.create(book_parmas)
        if @book.vaild? 
            render json: @book, status: 201 
        else 
            render json: @book.errors.full_messages
        end
    end  

        def show 
            @book = Book.find(params[:id])
            render json: @book 
        end 


        def destroy 
            @book = Book.find(params[:id])
            @book.destroy
            render json: {message: "Book has been deleted successfully!", book: @book}
        end 
    

private 

    def book_params
        params.permit(:title, :user_id)
    end 
end
