class Trip < ActiveRecord::Base
	serialize :stuff, Array
end
