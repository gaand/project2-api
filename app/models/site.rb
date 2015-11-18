#
class Site < ActiveRecord::Base
  belongs_to :user
  has_many :votes
  has_many :users, through: :votes 
end
