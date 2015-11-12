class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :zip_code, :user_id, :current_weather

  def current_weather
    ForecastIoApi.new(object).current_weather
  end
end
