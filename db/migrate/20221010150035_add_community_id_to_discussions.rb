class AddCommunityIdToDiscussions < ActiveRecord::Migration[6.1]
  def change
    add_column :discussions, :community_id, :integer
  end
end
