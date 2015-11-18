#
class SitesController < OpenReadController
  before_action :set_site, only: [:update, :destroy]

  def index 
    if params[:neighborhood] then
      @sites = Site.where(neighborhood: params[:neighborhood])
    elsif params[:coverage] then
      @sites = Site.where(coverage: params[:coverage])
    elsif params[:busy] then
      @sites = Site.where(busy: params[:busy])
    else
      @sites = Site.all
    end 
    render json: @sites 
  end
  

  # def show
  #   @site = Site.find(params[:id])

  #   render json: @site, serializer: SiteDetailSerializer, root: "site"
  # end

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
  def edit
    @site = Site.find(params[:id])
    render json: site_params
    if @site.update(site_params)
      render json: @site
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sites/1
  def destroy
    site = Site.find(params[:id])
    site.destroy
    flash[:notice] = "page successfully deleted!!!!!"
    redirect_to(:action => 'index')
  
    head :no_content
  end

  def set_site
    @site = current_user.my_sites.find(params[:id])
  end

  def site_params
    params.require(:site).permit(:name, :description, :category, :address, :neighborhood, :scale, :coverage, :busy)
  end

  private :set_site, :site_params

end
