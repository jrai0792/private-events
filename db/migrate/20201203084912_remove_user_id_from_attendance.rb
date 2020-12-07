class RemoveUserIdFromAttendance < ActiveRecord::Migration[6.0]
  def change
    remove_column :attendances, :user_id, :integer
  end
end
