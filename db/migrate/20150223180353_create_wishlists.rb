class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :title, null: false, unique: true
      t.string :item
      t.text :description
      t.references :user
    end
  end
end
