#
class SiteSerializer < ActiveModel::Serializer
  attributes :id, :name, :up_votes

  def up_votes
  	object.votes.count
  end
end
