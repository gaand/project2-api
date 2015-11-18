class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :address
      t.string :neighborhood
      t.string :scale
      t.string :coverage
      t.string :busy
      
      t.references :user

      t.timestamps null: false
    end
  end
end
