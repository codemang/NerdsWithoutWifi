class Trip < ActiveRecord::Base
	serialize :content, Array
end
