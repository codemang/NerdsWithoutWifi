class AddAlbumIdToTrips < ActiveRecord::Migration
  def change
  	  	 add_column :trips, :albumId, :string
  end
end
