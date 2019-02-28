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
  end
end
