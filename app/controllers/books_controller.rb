class BooksController < ApplicationController
	

	def index
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new()
		if @book.save
			redirect_to @post
		else
			render new
		end
		
	end

	private

	def post_params
		params.require(:book).permit(:title, :cotent)
	end
end
