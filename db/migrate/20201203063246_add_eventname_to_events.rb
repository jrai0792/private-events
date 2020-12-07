class AddEventnameToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :eventname, :string
  end
end
