class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :gender
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
