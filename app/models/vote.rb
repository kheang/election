class Vote < ActiveRecord::Base
  belongs_to :voter
  belongs_to :candidate
  belongs_to :seat

  def as_json(options)
	  hash = {vote_id: id,
		        voter_id: voter.id,
	          seat_id: seat.id,
	          candidate_id: candidate.id}
  end
end
