class Book < ApplicationRecord
	validates :title, presence: true
	has_many :book_catagories
	has_many :catagories, through: :book_catagories

	has_one_attached  :thumbnail
	has_one_attached  :pdf
end
