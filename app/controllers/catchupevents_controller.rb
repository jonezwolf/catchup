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
    count_bookings
  end

  def count_bookings
    number_of_bookings = @catchupevent.bookings.map do |booking|
      booking.number_of_guests
    end
    @total_guests = number_of_bookings.reduce(:+)
    return @total_guests
  end
end
