class CreateAccountants < ActiveRecord::Migration
  def change
    create_table :accountants do |t|
      t.integer :administrative_id

      t.timestamps
    end
  end
end
