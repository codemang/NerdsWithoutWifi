class PhotoController < ApplicationController
	def index
		@albumId = params[:albumId]
	end

	def pretrip
		@trip = Trip.find(1)
	end
end
