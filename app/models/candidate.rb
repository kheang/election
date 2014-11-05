class Candidate < ActiveRecord::Base
	validates :name, presence: true
	validates :party, presence: true

  has_many :votes
  belongs_to :seat

	def as_json(options)
		hash = {id: id,
		        name: name,
		        party: party}
	end
end
