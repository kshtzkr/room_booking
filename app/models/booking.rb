class Booking < ApplicationRecord
	belongs_to :room
	validate :checkin_checkout

	def checkin_checkout
		unless booking_start_date > booking_end_Date
			errors.add(:message, "checkout datetime can't be smaller than the checkin datetime")
		end
	end
end
