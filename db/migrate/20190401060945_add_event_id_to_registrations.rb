class AddEventIdToRegistrations < ActiveRecord::Migration[5.1]
  def change
    add_column :registrations, :event_id, :integer
  end
end
