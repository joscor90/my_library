class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]
    
    def index
        @books = Book.all
    end

    def show
    end

    def new
        @book = Book.new 
        @statuses = Book.statuses.keys.to_a 
    end 

    def create
        @book = Book.new(books_params)
        respond_to do |f|
            if @book.save
                f.html {redirect_to root_path, notice: 'Fue creado con éxito'}
            end
        end
    end 

    def edit 
    end 

    def update
        respond_to do |f|
            if @book.update(book_params)
                f.html {redirect_to root_path, notice: 'lo cambiaste exitosamente'}
            else 
                f.html {redirect_to edit_book_path}  #la diferencia con render es que este llama a una version más liviana de la vista, pero no redirige.
            end
        end 
    end 

    def destroy 
    end

    private 
    def books_params 
        params.require(:book).permit(:title, :author, :status, :borrowed_at, :returned_at)
    end 

     def set_book 
        @book = Book.find(params[:id])
    end

end