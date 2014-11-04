class Seat < ActiveRecord::Base
	def as_json(options)
		hash = {id: id,
		        office_name: office_name,
		        district: district}
	end
end
