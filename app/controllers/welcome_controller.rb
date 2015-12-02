class WelcomeController < ApplicationController
  def index
  	@destinations = Destination.all
  	# how can we use randomization? e.g. Destination.offset(rand(Destination.count)).first - also gem called 'randumb'
  end
end
