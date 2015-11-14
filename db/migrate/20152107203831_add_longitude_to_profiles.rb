class AddLongitudeToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :longitude, :string
  end
end
