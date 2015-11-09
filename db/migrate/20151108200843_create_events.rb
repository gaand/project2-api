class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :business_kind
      t.string :name
      t.string :website
      t.string :phone_number
      t.date :event_date
      t.integer :group_size
      t.references :location, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
