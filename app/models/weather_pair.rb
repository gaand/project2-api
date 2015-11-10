class WeatherPair < ActiveRecord::Base

  belongs_to :user, through: :profile

end
