class CandidateSerializer < ActiveModel::Serializer
  attributes :name, :seat_id

  has_many :votes

  def attributes
    data = super
    data[:vote_count] = object.votes.count
    data
  end
end
