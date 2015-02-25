class RemoveItemAndDescriptionFromWishlists < ActiveRecord::Migration
  def change
    remove_column :wishlists, :item, :string
    remove_column :wishlists, :description, :text
  end
end
