class RemoveDownvoteFromPopularToys < ActiveRecord::Migration
  def change
    remove_column :popular_toys, :downvote, :integer
  end
end
