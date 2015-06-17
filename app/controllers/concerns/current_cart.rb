module CurrentCart
	extend ActiveSupport::Concern

	private

		def set_cart
			@cart = Cart.find(session[:card_id])
		rescue  ActiveRecord::RecordNotFound
			@cart = Cart.create
			session[:card_id] =   @cart.id
		end
	end

	def increment_counter
      if session[:counter].nil?
        session[:counter] = 0
      end
      session[:counter] +=1
      
    end