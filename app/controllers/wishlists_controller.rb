class WishlistsController < ApplicationController
	def index
		@wishlists = Wishlist.all
	end

	def show
		return params
		@wishlist.title = Wishlist.title.find(params[:title])
	end

end