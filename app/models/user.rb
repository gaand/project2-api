#
class User < ActiveRecord::Base
  include Authentication
  
  has_many :my_sites, class_name: 'Site'
  has_many :votes
  has_many :sites, through: :votes
end
