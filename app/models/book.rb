class Book < ApplicationRecord

  has_many :notes
  def thumbnail
    "https://via.placeholder.com/64"
  end

end
