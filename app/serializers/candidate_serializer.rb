class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :name, :seat_id, :vote_count

  has_many :votes

	def vote_count
		object.votes.count
	end
end
