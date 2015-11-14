class RemoveLatLngFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :lat_lng
  end
end
