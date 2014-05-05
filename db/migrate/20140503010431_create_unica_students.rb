class CreateUnicaStudents < ActiveRecord::Migration
  def change
    create_table :unica_students do |t|
      t.integer :student_id
      t.integer :faculty_id
      t.integer :grade_id

      t.timestamps
    end
  end
end
