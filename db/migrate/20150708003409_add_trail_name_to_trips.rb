class AddTrailNameToTrips < ActiveRecord::Migration
  def change
  	 add_column :trips, :trailName, :string
  end
end
