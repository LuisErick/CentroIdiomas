class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :last_name
      t.integer :age
      t.string :dni
      t.text :about_me
      t.integer :user_id

      t.timestamps
    end
  end
end
