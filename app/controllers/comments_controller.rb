class CommentsController < ApplicationController
	def index
		redirect_to read_catagory_book_path(@catagory.id,@books.id)
	end
	def create
		@catagory = Catagory.find(params[:catagory_id])
		@books = @catagory.book.find(params[:book_id])
		@comment = @books.comments.create(comment_params)
		redirect_to read_catagory_book_path(@catagory.id,@books.id)
	end
	private def comment_params
		params.require(:comment).permit(:username, :body)
	end
end
