class RemoveEventIdFromAttendance < ActiveRecord::Migration[6.0]
  def change
    remove_column :attendances, :event_id, :integer
  end
end
