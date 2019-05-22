class RegistrationsController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @registrations = @event.registrations.all
  end

  def show
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.find(params[:id])
  end

  def new
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.new
  end

  def create
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.new(register_params)
    if @registration.save
      redirect_to event_registrations_path(@event)
    end
  end

  def destroy
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.find(params[:id])
    @registration.destroy
  end

  private
    def register_params
      params.require(:registration).permit(:name, :gender, :phone, :email, :event_id)
    end
end
