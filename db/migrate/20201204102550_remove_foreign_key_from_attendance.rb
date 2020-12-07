class RemoveForeignKeyFromAttendance < ActiveRecord::Migration[6.0]
  def change
    remove_column :attendances, :user_attended_id, :integer
    remove_column :attendances, :attended_event_id, :integer
  end
end
