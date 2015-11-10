class EventsController < ApplicationController
  before_action :set_event, only: [:update, :destroy]

  # GET /locations
  def index
    @event = event.all
    render json: Event.all
  end
end
