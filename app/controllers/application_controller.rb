class ApplicationController < ActionController::Base
	before_action :set_book_catagories

	def set_book_catagories
	    @b_catagories =  Catagory.all.order("created_at DESC")
	end
end
