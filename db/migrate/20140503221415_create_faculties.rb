class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :noun
      t.text :description

      t.timestamps
    end
  end
end
