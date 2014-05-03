class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :noun
      t.text :description

      t.timestamps
    end
  end
end
