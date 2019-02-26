class BookingsController < ApplicationController
  before_action :set_catchupevent, only: [ :new, :create ]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    booking = Booking.new(booking_params)
    authorize booking
    booking.catchupevent = @catchupevent
    booking.user_id = current_user.id
    if booking.save
      redirect_to my_bookings_path
    else
      render :new
    end
  end

  private

  def set_catchupevent
    @catchupevent = Catchupevent.find(params[:catchupevent_id])
  end

  def booking_params
    # whitelisting your parameters
    params.require(:booking).permit(:number_of_guests, :user_id, :catchupevent_id)
  end
end
