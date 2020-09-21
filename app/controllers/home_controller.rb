class HomeController < ApplicationController
  def index
  	@catagories =  Catagory.all.order("created_at DESC")
  	
  end
end
