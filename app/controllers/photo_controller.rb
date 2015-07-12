class PhotoController < ApplicationController
	def index
		@albumId = params[:albumId]
		@trips = Trip.all
	end

	def pretrip
		@trip = Trip.find(1)
	end
end
