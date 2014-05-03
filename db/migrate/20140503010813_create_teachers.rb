class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :person_id
      t.integer :grade_id

      t.timestamps
    end
  end
end
