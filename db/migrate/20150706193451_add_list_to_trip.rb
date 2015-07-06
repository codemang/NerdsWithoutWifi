class AddListToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :content, :text, array:true, default: []
  end
end
