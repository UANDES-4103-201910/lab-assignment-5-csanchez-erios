class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @event = User.new(params[:event])
    if @event.save
      redirect_to @event
    else
      render :new
      render json:@event
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    render json:@event
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(params[:event])
      redirect_to(@event)
    else
      render :edit
      render json:@event
    end
  end
  private
  def event_params
    params.require(:event).permit(:name, :description, :start_date)
  end
end
