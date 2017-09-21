class TicketsController < ApplicationController

def index
  @ticket = Ticket.all
end

def new
  @ticket = Ticket.new
end

def create
  @ticket = Ticket.new(ticket_params)
  @ticket.init = DateTime.now

  if @ticket.save
  redirect_to @ticket
  else
  render 'new'
  end
end

def show
  @ticket = Ticket.find(params[:id])
  end

def edit
@ticket = Ticket.find(params[:id])
end

def update
  @ticket = Ticket.find(params[:id])

   if @ticket.update(ticket_params)
     redirect_to @ticket
   else
     render 'edit'
   end
end

def payment
end

def bill
  @ticket = Ticket.find(params[:id])
  @ticket.exit = DateTime.now
  @ticket.price = (@ticket.exit - @ticket.init) * 10
end

end

private

def ticket_params
  params.require(:ticket).permit(:plate, :vtype)
end
