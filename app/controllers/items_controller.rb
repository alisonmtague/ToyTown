class ItemsController < ApplicationController
	def index
		@items = Item.all
	end
	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)
		if @item.save
			redirect_to wishlist_path(@item.wishlist)
		else
			redirect_to wishlist_path
		end
	end

	private
	def item_params
		params.require(:item).permit(:item_name, :description, :wishlist_id)
		# .merge(:user_id => current_user.id)
	end
end

# .where(wishlist_id: current_user.id)