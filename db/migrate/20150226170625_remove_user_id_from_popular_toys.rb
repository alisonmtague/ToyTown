class RemoveUserIdFromPopularToys < ActiveRecord::Migration
  def change
    remove_column :popular_toys, :user_id, :integer
  end
end
