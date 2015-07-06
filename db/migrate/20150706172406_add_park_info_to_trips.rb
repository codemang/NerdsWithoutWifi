class AddParkInfoToTrips < ActiveRecord::Migration
  def change
  	add_column :trips, :parkName, :string
  	add_column :trips, :parkProfilePic, :string
  	add_column :trips, :parkAddress, :string
  end
end
