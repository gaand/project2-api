class Profile < ActiveRecord::Base
  belongs_to :user

  has_many :weather_pairs
end
