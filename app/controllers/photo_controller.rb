class PhotoController < ApplicationController
	def index
	end

	def pretrip
		@trip = Trip.find(1)
	end
end
