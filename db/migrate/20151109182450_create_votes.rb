class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.string :opinion

    	t.references :users
    	t.references :sites

    	t.timestamps null: false
    end
  end
end
