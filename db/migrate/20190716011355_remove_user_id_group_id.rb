class RemoveUserIdGroupId < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_groups, :user_id, :integer
    remove_column :user_groups, :group_id, :integer
  end
end
