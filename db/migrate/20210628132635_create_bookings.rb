class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :room_id
      t.datetime :booking_start_date
      t.datetime :booking_end_Date
      t.boolean :booking_cancelation, default: false

      t.timestamps
    end
  end
end
