class BooksController < ApplicationController

  def show
    @book = Book.find(params[:id])

    @notes = @book.notes.order(created_at: :desc)
  end

  def create
    Book.create(book_params)

    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description)
  end

end
