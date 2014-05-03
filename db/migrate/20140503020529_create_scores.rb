class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :score_type_id
      t.integer :matriculation_course_id
      t.float :value
      t.date :date

      t.timestamps
    end
  end
end
