 class WishlistsController < ApplicationController
	def index

		# if current_user == Wishlist.find(params[user_id])
		# 	Wishlist.user_id
		# end



		@wishlists = Wishlist.where(user_id: current_user.id)
		# @current_user = User.find(params[:id])
		# @wishlists = Wishlist.find(params[current_user])
# if current id = wishlist user_id then display wishlist
	end

	def show
		@wishlist = Wishlist.find(params[:id])

	end

end