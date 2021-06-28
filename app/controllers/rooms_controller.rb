class RoomsController < ApplicationController
	def create
		@room = Room.new(room_params)
		if @room.save!
			render json: @room
		else
			render error: {error: 'unable to create a room'}, status: 400
		end
	end

	def update
		@room = room
		if @room
			@room.update(room_params)
			render json: {message: 'Room has been updated successfully'}, status: 200
		else
			render error: {error: 'unable to update room'}, status: 400
		end
	end

	def room_details
		@room = room
		render json: {room: @room, bookings: @room.bookings}, status: 200
	end

	private

	def room_params
		params.require(:room).permit(:type, :description, :max_cap)
	end

	def room
		@room = Room.find(params[:id])
	end
end
