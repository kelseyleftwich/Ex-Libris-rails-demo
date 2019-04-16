class NotesController < ApplicationController
  def create
    book = Book.find(params[:note][:book_id])

    book.notes.create(note_params)

    redirect_to book
  end

  private

  def note_params
    params.require(:note).permit(:page_number, :body)
  end
end
