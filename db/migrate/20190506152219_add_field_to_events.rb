class AddFieldToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :capacity, :integer, :default => 1
    add_column :events, :images, :string
  end
end
