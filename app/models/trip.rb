class Trip < ActiveRecord::Base
    FB_ALBUM_ID = 10153444930839670
    serialize :content, Array
end
