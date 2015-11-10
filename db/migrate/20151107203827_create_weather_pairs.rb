class CreateWeatherPairs < ActiveRecord::Migration
  def change
    create_table :weather_pairs do |t|
      t.string :weather
      t.string :genre

      t.timestamps null: false
    end
  end
end
