class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	@trips = Trip.all


	#password protection
	@@hashed_pass = 'bb7fc2b9047ca88704bdac121d781c701d9209701dcc0c11ba82eeeeaecd9dbd' #should move this
  	helper_method :logged_in? # can wrap anything in <% if logged_in? %>

	def logged_in?
	  session[:login] != nil
	end

	private
	def authenticate
	  login = authenticate_or_request_with_http_basic do |username, password|
	    username == "username" && Digest::SHA256.hexdigest(password) == @@hashed_pass
	  end
	  session[:login] = login
	end

	def do_logout
	  session[:login] = nil
	end

	
end
