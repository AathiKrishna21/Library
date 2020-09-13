class Catagory < ApplicationRecord

	has_many :book_catagories
	has_many :book, through: :book_catagories
end
