class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :location
      t.string :category
      t.decimal :longitude
      t.decimal :latitude
      t.string :address
      t.string :outdoors
      t.string :covered
      t.string :purchase_necessary
      t.string :best_time
      
      t.references :users
      t.references :votes

      t.timestamps null: false
    end
  end
end
