class CatchupeventsController < ApplicationController
  def index
    # @catchupevents = CatchUpEvent.all
    @catchupevents = policy_scope(Catchupevent)
    if params[:query].present?
      sql_query = "name @@ :query OR location @@ :query OR category @@ :query"
      @catchupevents = Catchupevent.where(sql_query, query: "%#{params[:query]}%")
    else
      @catchupevents = policy_scope(Catchupevent)
    end
  end

  def show
    @catchupevent = Catchupevent.find(params[:id])
    authorize @catchupevent

    @catchupevents = Catchupevent.where.not(latitude: nil, longitude: nil)

    @markers = [{
        lng: @catchupevent.longitude,
        lat: @catchupevent.latitude
    }]

    count_bookings
    check_if_count_equals_zero
    duration_of_catchupevent
  end

  # Other methods needed

  def duration_of_catchupevent
    @duration = (@catchupevent.end_time.to_i - @catchupevent.start_time.to_i) / 3600
  end

  def count_bookings
    number_of_bookings = @catchupevent.bookings.map do |booking|
      booking.number_of_guests
    end
    @guests = number_of_bookings.reduce(:+)
    return @guests
  end

  def check_if_count_equals_zero
    if @guests.nil?
      @total_guests = '0'
    else
      @total_guests = @guests
    end
  end
end
