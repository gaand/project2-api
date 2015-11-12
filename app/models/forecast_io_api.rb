require 'json'

class ForecastIoApi
  include HTTParty

  def initialize(profile)
    @@url = "https://api.forecast.io/forecast/0d2fae036c63eb41ba914a58600cb1ef/" # TODO take out the developer key
    @latitude = profile.latitude
    @longitude = profile.longitude

    get_forecast
    parse_forecast
  end

  def get_forecast
    @response = HTTParty.get("#{@@url}#{@latitude},#{@longitude}").body
  end

  def parse_forecast
    @forecast = JSON.parse @response, symbolize_names: true
  end

  def current_weather
    @forecast[:currently][:icon]
  end
end
