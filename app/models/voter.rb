class Voter < ActiveRecord::Base
	def as_json(options)
		hash = {id: id,
		        name: name,
		        party: party}
		{voter: hash}
	end
end
