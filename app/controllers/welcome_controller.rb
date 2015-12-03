class WelcomeController < ApplicationController
  def index
  	@all_id = Destination.pluck(:id)
  	@randest_id = @all_id.sample
  end
end
