class Candidate < ActiveRecord::Base
	validates :name, presence: true
	validates :party, presence: true

	def as_json(options)
		hash = {id: id,
		        name: name,
		        party: party}
	end
end
