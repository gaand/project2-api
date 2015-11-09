#
class User < ActiveRecord::Base
  include Authentication
  has_many :sites
  has_many :votes
end
