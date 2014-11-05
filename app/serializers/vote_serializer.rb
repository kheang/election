class VoteSerializer < ActiveModel::Serializer
  attributes :id, :voter_id, :candidate_id, :seat_id
end
