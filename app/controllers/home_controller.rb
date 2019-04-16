class HomeController < ApplicationController
  def index
    @books = Book.order(created_at: :desc).all
  end

  def about
  end

  def temp
    redirect_to root_path
  end

end
