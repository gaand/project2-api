#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :given_name, :current_user, :sites

  def current_user
    scope == object
  end

  def sites
  	object.sites
  end

end

