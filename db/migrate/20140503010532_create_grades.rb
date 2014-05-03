class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :noun
      t.text :description

      t.timestamps
    end
  end
end
