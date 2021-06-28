class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :type
      t.text :description
      t.integer :max_cap

      t.timestamps
    end
  end
end
