#
class Site < ActiveRecord::Base
  belongs_to :creator, class_name: 'User'
  has_many :votes
  has_many :users, through: :votes 
end
