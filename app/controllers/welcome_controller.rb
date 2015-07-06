class WelcomeController < ApplicationController
	def index
		@trips = Trip.all
	end
	def new
		@trips = Trip.all
		trip = Trip.create(parkName: "Glacier", content: ["1", "2"])	
	end

end
