class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.boolean :state
      t.integer :permission_id

      t.timestamps
    end
  end
end
