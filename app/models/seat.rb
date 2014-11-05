class Seat < ActiveRecord::Base
  has_many :candidates
  has_many :votes

	def as_json(options)
		hash = {id: id,
		        office_name: office_name,
		        district: district}
	end
end
