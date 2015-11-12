class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   "email",           null: false
      t.string   "token",           null: false
      t.string   "password_digest", null: false
      t.datetime "created_at",      null: false
      t.datetime "updated_at",      null: false
    end
  end
end
