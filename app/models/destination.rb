class Destination < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode

	def random
		# whatever
		# on click of home page button, randomly redirect (whole link) to a destination show page
	end

end
