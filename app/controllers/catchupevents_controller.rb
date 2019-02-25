class CatchupeventsController < ApplicationController
  def index
    @catchupevents = CatchUpEvent.all
  end

  def show
    @catchupevent = CatchUpEvent.find(params[:id])
  end
end
