class BookingController < ApplicationController
	def create
		@booking = Booking.new(booking_params)
		if @booking.save!
			render json: @booking
		else
			render error: {error: 'unable to create a booking'}, status: 400
		end
	end

	def update
		@booking = booking
		if @booking
			@booking.update(booking_params)
			render json: {message: 'Booking has been updated successfully'}, status: 200
		else
			render error: {error: 'unable to update booking'}, status: 400
		end
	end

	def destroy
		@booking = booking
		if @booking
			@booking.update(booking_cancelation: true)
			render json: {message: 'Booking has been deleted successfully'}, status: 200
		else
			render error: {error: 'unable to update booking'}, status: 400
		end
	end

	private

	def booking_params
		params.require(:booking).permit(:type, :description, :max_cap)
	end

	def booking
		@booking = Booking.find(params[:id])
	end
end
