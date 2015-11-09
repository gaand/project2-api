class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :business_type
      t.string :name
      t.string :website
      t.string :phone_number
      t.string :city
      t.string :state
      t.date :event_date
      t.integer :group_size

      t.timestamps null: false
    end
  end
end
