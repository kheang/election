class VoteSerializer < ActiveModel::Serializer
  attributes :voter_id, :candidate_id, :seat_id
end
