class Destination < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	# ensures new show page random destination is not same as current one
	# def randest
	# 	until @randest_id != @destination
	# 	  link_to "/#{@randest_id}"
	# 	end
	# end

end
