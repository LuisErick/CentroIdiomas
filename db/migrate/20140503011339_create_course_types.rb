class CreateCourseTypes < ActiveRecord::Migration
  def change
    create_table :course_types do |t|
      t.string :noun
      t.text :description

      t.timestamps
    end
  end
end
