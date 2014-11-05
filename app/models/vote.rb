class Vote < ActiveRecord::Base
  belongs_to :voter
  belongs_to :candidate
  belongs_to :seat

  validates :voter, presence: true
  validates_uniqueness_of :voter, scope: :seat
  validates :candidate, presence: true
  validates :seat, presence: true

  def as_json(options)
	 hash = {vote_id: id,
		        voter_id: voter.id,
	          seat_id: seat.id,
	          candidate_id: candidate.id}
   {vote: hash}
  end
end
