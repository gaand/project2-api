class AddLatitudeToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :latitude, :string
  end
end
