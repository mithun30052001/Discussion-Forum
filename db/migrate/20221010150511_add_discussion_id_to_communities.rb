class AddDiscussionIdToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :Communities, :discussion_id, :integer
  end
end
