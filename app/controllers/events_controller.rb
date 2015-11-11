class EventsController < ApplicationController
  before_action :set_event, only: [:update, :destroy]

  # GET /events from current user
  def index
    @events = current_user.events

    render json: @events
  end
  # GET /events/1
  def show
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
  # DELETE /events/1
  def destroy
    @event.destroy

    head :no_content
  end

  def set_event
    @event = current_user.events.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:business_kind, :name, :website, :phone_number, :event_date, :group_size, :location_id, :user_id)
  end

  private :set_event, :event_params

end
