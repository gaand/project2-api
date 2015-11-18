class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.string :opinion

    	t.references :user
    	t.references :site

    	t.timestamps null: false
    end
  end
end
