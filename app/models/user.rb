#
class User < ActiveRecord::Base

  has_many :weather_pairs, through: :profile
  has_one :profile

  include Authentication

end
