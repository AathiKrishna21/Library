class BookCatagory < ApplicationRecord
  belongs_to :book
  belongs_to :catagory
end
