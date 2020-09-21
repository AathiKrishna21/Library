class BooksController < ApplicationController
	

	def index
		@catagory = Catagory.find(params[:catagory_id])
  		@books = @catagory.book.order(:title)
	end

	def read
		@books = Book.find(params[:id])
		#@book = @books.order(:title)
	end

	#def create
		#@book = Book.new()
		#if @book.save
		#	redirect_to @post
		#else
			#render new
		#end
		
	#end

	#private

	#def post_params
	#	params.require(:book).permit(:title, :cotent)
	#end
end
