class RemoveUserEmailFromUserRecords < ActiveRecord::Migration[6.0]
  def change

    remove_column :user_records, :user_email, :string
  end
end
