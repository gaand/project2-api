class WeatherPairsController < OpenReadController
  before_action :set_weather_pair, only: [:update, :destroy]

  # GET /weather_pairs
  def index
    @weather_pairs = WeatherPair.all

    render json: @weather_pairs
  end

  # GET /weather_pairs/1
  def show
    @weather_pair = WeatherPair.find(params[:id])

    render json: @weather_pair
  end

  # POST /weather_pairs
  def create
    @weather_pair = current_user.weather_pairs.new(weather_pair_params)

    if @weather_pair.save
      render json: @weather_pair, status: :created, location: @weather_pair
    else
      render json: @weather_pair.errors, status: :unprocessable_entity
    end
  end

  # PATCH /weather_pairs/1
  def update
    if @weather_pair.update(weather_pair_params)
      head :no_content
    else
      render json: @weather_pair.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weather_pairs/1
  def destroy
    @weather_pair.destroy

    head :no_content
  end

  def set_weather_pair
    @weather_pair = current_user.weather_pairs.find(params[:id])
  end

  def weather_pair_params
    params.require(:weather_pair).permit(:title, :isbn)
  end

  private :set_weather_pair, :weather_pair_params
end


end
