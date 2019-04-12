class TicketsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @ticket = Ticket.new(params[ticket_params])
    if @ticket.save
      redirect_to @ticket
    else
      render :new
      render json:@ticket
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    render json:@ticket
  end

  def update
    @ticket = Ticket.find(params[:id])
    if @ticket.update(params[ticket_params])
      redirect_to(@ticket)
    else
      render :edit
      render json:@ticket
    end
  end

  private
  def ticket_params
    params.require(:ticket).permit(:ticket_type_id, :order_id)
  end
end
