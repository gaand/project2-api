class Profile < ActiveRecord::Base

  has_many :weather_pairs
  belongs_to :user
end
