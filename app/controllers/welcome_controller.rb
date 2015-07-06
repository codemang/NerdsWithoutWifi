class WelcomeController < ApplicationController
	def index
		@trips = Trip.all
	end
	def new
		@trips = Trip.all
	end

end
