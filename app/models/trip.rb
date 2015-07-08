class Trip < ActiveRecord::Base
	scope :next, lambda {|id| where("id > ?",id).order("id ASC") } # this is the default ordering for AR
    scope :previous, lambda {|id| where("id < ?",id).order("id DESC") }

	def next
      Trip.next(self.id).first
    end

    def previous
      Trip.previous(self.id).first
    end
end
