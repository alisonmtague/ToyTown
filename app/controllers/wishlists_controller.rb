 class WishlistsController < ApplicationController
	def index
		@wishlists = Wishlist.all
		# @wishlists = @current_user.wishlists.all
		# @wishlist = Wishlist.new(:user => @current_user)
	end

	def show
		return params
		@wishlist.title = Wishlist.title.find(params[:title])
	end

end