class CatchupeventsController < ApplicationController
  def index
    # @catchupevents = CatchUpEvent.all
    @catchupevents = policy_scope(Catchupevent)
  end

  def show
    @catchupevent = Catchupevent.find(params[:id])
    authorize @catchupevent

    # @catchupevents = Catchupevent.where.not(latitude: nil, longitude: nil)

    @markers = [{
        lng: @catchupevent.longitude,
        lat: @catchupevent.latitude
    }]
  end

end
