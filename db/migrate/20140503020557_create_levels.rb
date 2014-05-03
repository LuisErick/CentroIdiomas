class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :noun
      t.text :description

      t.timestamps
    end
  end
end
