#
class User < ActiveRecord::Base
  include Authentication

  has_many :weather_pairs
end
