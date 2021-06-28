class Room < ApplicationRecord
	enum [:basic_room, :quick_standup_room, :multimedia_room]
	has_many :booking
end
