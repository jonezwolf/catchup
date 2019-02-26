class CatchupeventsController < ApplicationController
  def index
    # @catchupevents = CatchUpEvent.all
    @catchupevents = policy_scope(Catchupevents)
  end

  def show
    @catchupevent = CatchUpEvent.find(params[:id])
    authorize @catchupevent
  end
  
  def new
    @catchupevent = Catchupevent.new
    authorize @catchupevent
  end 
  
  def create
    @catchupevent = Catchupevent.new(catchupevents_params)
    authorize @catchupevent 
    if @catchupevent.save
      redirect_to my_catchups_path 
    else 
      render :new
    end 
  end 
    
  def destroy 
    @catchupevent = Catchupevent.find(params[:id])
    @catchupevent.destroy
    redirect_to my_catchups_path 
  end  
  
  private 
  
  def catchupevents_params
    params.require(:catchupevent).permit(:category, :name, :location, :start_time, :end_time, :description, :capacity)
  end 
end
