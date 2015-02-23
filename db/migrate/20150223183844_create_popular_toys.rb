class CreatePopularToys < ActiveRecord::Migration
  def change
    create_table :popular_toys do |t|
      t.string :name
      t.integer :upvote
      t.integer :downvote
      t.references :user
    end
  end
end
