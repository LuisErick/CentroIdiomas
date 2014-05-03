class CreateMatriculationCourses < ActiveRecord::Migration
  def change
    create_table :matriculation_courses do |t|
      t.integer :level_id
      t.integer :package_id
      t.float :final_grade

      t.timestamps
    end
  end
end
