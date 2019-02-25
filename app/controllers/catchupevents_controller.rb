class CatchupeventsController < ApplicationController
  def index
    # @catchupevents = CatchUpEvent.all
    @catchupevents = policy_scope(Catchupevents)
  end

  def show
    @catchupevent = CatchUpEvent.find(params[:id])
    authorize @catchupevent
  end
end
