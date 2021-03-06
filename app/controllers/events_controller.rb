class EventsController < ApplicationController
  before_action :set_event, only:[:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only:[:new, :create]
  def index
    @events = Event.all
  end

  def show

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit

  end
  def update

    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
      @event.destroy
      redirect_to events_path
  end

  def event_params
    params.require(:event).permit(:title, :price, :event_date, :description, :capacity, :images)
  end

  def set_event
      @event = Event.find(params[:id])
  end
end
