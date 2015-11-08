class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.strings :tate
      t.string :region

    t.timestamps null: false
    end
  end
end
