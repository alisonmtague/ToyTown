 class WishlistsController < ApplicationController
	def index
		@wishlists = Wishlist.where(user_id: current_user.id)
	end

	def show
		@wishlist = Wishlist.find(params[:id])
	end

	def destroy
		@wishlist = Wishlist.find(params[:id])
		@wishlist.destroy
		redirect_to wishlist_path
	end

	def new
		@wishlist = Wishlist.new
	end
end