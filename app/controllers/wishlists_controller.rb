 class WishlistsController < ApplicationController
	def index
		@wishlists = Wishlist.where(user_id: current_user.id)
		@wishlist = Wishlist.new
	end

	def show
		@wishlist = Wishlist.find(params[:id])
		@items = @wishlist.items
		@item = Item.new

	end

	def destroy
		@wishlist = Wishlist.find(params[:id])
		@wishlist.destroy
		redirect_to wishlists_path
	end

	def new
		@wishlist = Wishlist.new
	end

	def create
		@wishlist = Wishlist.new(wishlist_params)
		if @wishlist.save
			redirect_to wishlists_path
		end
	end

	private
	def wishlist_params
		params.require(:wishlist).permit(:title).merge(:user_id => current_user.id)
	end
end


