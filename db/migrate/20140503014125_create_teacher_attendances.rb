class CreateTeacherAttendances < ActiveRecord::Migration
  def change
    create_table :teacher_attendances do |t|
      t.integer :package_id
      t.integer :state_id
      t.time :arrival_time
      t.time :dismissal_time

      t.timestamps
    end
  end
end
