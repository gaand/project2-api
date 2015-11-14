class WeatherPairSerializer < ActiveModel::Serializer
  attributes :id, :weather, :genre, :profile_id
end
