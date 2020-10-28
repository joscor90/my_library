class BooksController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    
    def index
    end

    def new
        @book = Book.new 
        @states = Book.states.keys.to_a 
    end 

    def create 
    end 

    def edit 
    end 

    def update 
    end 

    def destroy 
    end

    private 
    def books_params 
    end 

    def set_book
    end

end