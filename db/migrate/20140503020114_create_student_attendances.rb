class CreateStudentAttendances < ActiveRecord::Migration
  def change
    create_table :student_attendances do |t|
      t.date :date
      t.integer :state_id
      t.integer :matriculation_course_id

      t.timestamps
    end
  end
end
