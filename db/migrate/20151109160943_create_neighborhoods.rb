class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
    	t.string :name
    	t.string :city
    	t.string :greater_metro_area
    end
  end
end
