class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :title
      t.string :item
      t.text :description
      t.references :user
    end
  end
end
