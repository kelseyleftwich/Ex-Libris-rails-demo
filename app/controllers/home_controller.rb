class HomeController < ApplicationController
  def index
    @books = Book.all
  end

  def about
  end

  def temp
    redirect_to root_path
  end

end
