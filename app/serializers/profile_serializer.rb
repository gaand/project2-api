class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :zip_code,:user_id
end
