#
class User < ActiveRecord::Base
  include Authentication

  has_one :profile

end
