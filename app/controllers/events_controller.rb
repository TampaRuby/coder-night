class EventsController < ApplicationController
  respond_to :html

  # GET /events
  def index
    @events = Event.all
    respond_with @events
  end

  # GET /events/1
  def show
    @event = Event.find(params[:id])
    respond_with @event
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  def create
    @event = Event.create(params[:event])
    respond_with @event
  end

  # PUT /events/1
  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params[:event])
    respond_with @event
  end

  # DELETE /events/1
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    respond_with @event
  end
end
