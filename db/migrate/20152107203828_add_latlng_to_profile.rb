class AddLatlngToProfile < ActiveRecord::Migration
  def change

    add_column :profiles, :lat_lng, :string

  end
end
