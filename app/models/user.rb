#
class User < ActiveRecord::Base
  include Authentication

  has_many :sites
end
