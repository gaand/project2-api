class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :nickname
      t.string :fav_meme
      t.string :zip_code
      t.references :user, index: true, foreign_key: true
      t.references :weather_pair, index: true, foreign_key: true

    end
  end
end
