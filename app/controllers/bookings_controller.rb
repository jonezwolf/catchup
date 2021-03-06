class BookingsController < ApplicationController
  before_action :set_catchupevent, only: [ :new, :create, :destroy ]

  def index
    @bookings = policy_scope(Booking)
    # @catchupevents = Catchupevent.all

    # bookings_of_all_catchupevents = []

    # @catchupevents.map do |catchupevent|
    #   catchupevent.bookings.each do |booking|
    #     bookings_of_all_catchupevents << booking.number_of_guests
    #   end
    # end
    # @total = bookings_of_all_catchupevents.reduce(:+)
    # return @total

  end

  def new
    @booking = Booking.new
    authorize @booking
    count_bookings
  end

  def create
    booking = Booking.new(booking_params)
    redirect_to new_catchupevent_booking_path, warning: "Please specify number of tickets!" if booking.number_of_guests.nil?

    authorize booking
    booking.catchupevent = @catchupevent
    booking.user_id = current_user.id
    redirect_to my_bookings_path, notice: "Congrats - you've booked #{booking.number_of_guests} slots for #{@catchupevent.name} :-)" if booking.save
  end

  def destroy
    booking = Booking.find(params[:id])
    authorize booking
    booking.destroy
    redirect_to my_bookings_path, alert: "You've deleted your booking for #{booking.catchupevent.name}."
  end

  # Other methods

  def count_bookings
    number_of_bookings = @catchupevent.bookings.map do |booking|
      booking.number_of_guests
    end
    @total_guests = number_of_bookings.reduce(:+)
    return @total_guests
  end

  # Private Methods

  private

  def set_catchupevent
    @catchupevent = Catchupevent.find(params[:catchupevent_id])
  end

  def booking_params
    # whitelisting your parameters
    params.require(:booking).permit(:number_of_guests, :user_id, :catchupevent_id)
  end
end
