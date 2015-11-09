class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.integer :up_count
    	t.integer :down_count
    end
  end
end
