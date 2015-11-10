class EventsController < ApplicationController
  before_action :set_event, only: [:update, :destroy]

  # GET /events
  def index
    @event = event.all

    render json: Event.all
  end
  # GET /events/1
  def show
    @event = event.find(params[:id])

    render json: @event
  end
  # POST /events
  def create
    @event = current_user.events.new(event_params)

    if @event.save
      render json: @event, status: :created, event: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end
 # PATCH /events/1
  def update
    if @event.update(event_params)
      head :no_content
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  end
