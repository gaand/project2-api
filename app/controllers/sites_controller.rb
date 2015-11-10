#
class SitesController < ApplicationController
  before_action :set_site, only: [:update, :destroy]

  # GET /sites
#  def index
#    @sites = Site.all

#    render json: @sites
#  end

  # GET / 
  def index
   if params[:neighborhood] then
     @sites = Site.find_by_neighborhood(params[:neighborhood])
     else if params[:acivity] then
       @sites = Site.find_by_activity(params[:activity])
     else
       @sites = Site.all
     end
   end

   render json: @sites
 end

  # DO I WANT THIS???
  def show
    @site = Site.find(params[:id])

    render json: @site
  end

  # POST /sites
  def create
    @site = current_user.my_sites.new(site_params)

    if @site.save
      render json: @site, status: :created, location: @site
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  # PATCH /sites/1
  def update
    if @site.update(site_params)
      head :no_content
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sites/1
  def destroy
    @site.destroy

    head :no_content
  end

  def set_site
    @site = current_user.my_sites.find(params[:id])
  end

  def site_params
    params.require(:site).permit(:name, :location, :latitude, :longitude, :description, :upvote_count, :downvote_count, :outdoors, :wifi, :food_drink)
  end

  private :set_site, :site_params
end
