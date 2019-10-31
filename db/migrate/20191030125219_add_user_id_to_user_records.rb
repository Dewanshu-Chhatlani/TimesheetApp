class AddUserIdToUserRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :user_records, :user_id, :integer
    add_index :user_records, :user_id
  end
end
