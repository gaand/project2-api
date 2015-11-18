#
class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :location
      t.decimal :longitude
      t.decimal :latitude
      t.string :address
      t.string :outdoors
      t.string :covered
      t.string :purchase_necessary
      t.string :category

      t.references :user
      t.references :neighborhood
      t.references :vote

      t.timestamps null: false
    end
  end
end
