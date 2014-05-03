class CreateFinalGrades < ActiveRecord::Migration
  def change
    create_table :final_grades do |t|
      t.integer :matriculation_id
      t.float :value
      t.boolean :state

      t.timestamps
    end
  end
end
