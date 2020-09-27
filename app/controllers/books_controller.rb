class BooksController < ApplicationController
	

	def index
		@catagory = Catagory.find(params[:catagory_id])
  		@books = @catagory.book.order(:title)
	end
    before_action :authenticate_user!
	def read

		@catagory = Catagory.find(params[:catagory_id])
		@books = @catagory.book.find(params[:id])
		
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
