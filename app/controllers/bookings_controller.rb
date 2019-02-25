class BookingsController < ApplicationController
  before_action :set_catchupevent

  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.new(booking_params)
    booking.catchupevent = @catchupevent
    if booking.save
      redirect_to my_bookings_path
    else
      render :new
    end
  end

  private

  def set_catchupevent
    @catchupevent = CatchUpEvent.find(params[:id])
  end

  def booking_params
    # whitelisting your parameters
    params.require(:booking).permit(:number_of_guests, :user_id, :catchupevent_id)
  end
end
