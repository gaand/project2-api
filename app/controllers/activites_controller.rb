class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:update, :destroy]

  # GET /activities
  def index
    @activities = activity.all

    render json: @activities
  end


  # GET /activities/1
  def show
    @activity = activity.find(params[:id])

    render json: @activity
  end

  # POST /activities
  def create
    @activity = current_user.activities.new(activity_params)

    if @activity.save
      render json: @activity, status: :created, location: @activity
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH /activities/1
  def update
    if activity.update(activity_params)
      head :no_content
    else
      render json: @activity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /activities/1
  def destroy
    @activity.destroy

    head :no_content
  end

  def set_activity
    @activity = current_user.activities.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :location, :latitude, :longitude, :description, :upvote_count, :downvote_count, :outdoors, :wifi, :food_drink)
  end

  private :set_activity, :activity_params
end
