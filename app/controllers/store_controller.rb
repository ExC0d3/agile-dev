class StoreController < ApplicationController
  def index
  	@count = increment_counter
    @show_count = "You've been here #{@count} times" if session[:counter] > 5
  	@products = Product.order(:title)
  end

  def increment_counter
  	if session[:counter].nil?
  		session[:counter] = 0
  	end
  	session[:counter] += 1
  	
  end
end
