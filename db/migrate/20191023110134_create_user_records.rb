class CreateUserRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :user_records do |t|
      t.string :user_email
      t.string :client_name
      t.string :project_name
      t.string :activity_type
      t.date :date
      t.string :start_time
      t.string :end_time
      t.text :description

      t.timestamps
    end
  end
end
