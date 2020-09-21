class CatagoryController < ApplicationController
	def _nav
		@catagories = Catagory.all
	end
end
