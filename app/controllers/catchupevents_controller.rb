class CatchupeventsController < ApplicationController
  def index
    # @catchupevents = CatchUpEvent.all
    @catchupevents = policy_scope(Catchupevent)
  end

  def show
    @catchupevent = Catchupevent.find(params[:id])
    authorize @catchupevent
  end
end
