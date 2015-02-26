class RemoveUpvoteFromPopularToys < ActiveRecord::Migration
  def change
    remove_column :popular_toys, :upvote, :integer
  end
end
