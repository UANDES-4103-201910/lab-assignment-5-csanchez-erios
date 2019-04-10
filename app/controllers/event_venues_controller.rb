class EventVenuesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @event_venue = EventVenue.new(event_venue_params)
    if @event_venue.save
      redirect_to @event_venue
    else
      render :new
      render json:@event_venue
    end
  end

  def destroy
    @event_venue = EventVenue.find(params[:id])
    @event_venue.destroy
    render json:@event_venue
  end

  def update
    @event_venue = EventVenue.find(params[:id])
    if @event_venue.update(params[event_venue_params])
      redirect_to(@event_venue)
    else
      render :edit
      render json:@event_venue
    end
  end

  private
    def event_venue_params
      params.require(:event_venue).permit(:name, :address, :capacity)
    end
end
