  class User < ActiveRecord::Base
    include Authentication

    has_many :events
    has_many :locations, through: :events

    # validates :password, presence: true
    # validates :email, uniqueness: true
  end
