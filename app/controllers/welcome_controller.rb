class WelcomeController < ApplicationController
	def index
		@trips = Trip.all
	end
end
