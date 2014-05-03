class CreateMatriculationExams < ActiveRecord::Migration
  def change
    create_table :matriculation_exams do |t|
      t.integer :matriculation_id
      t.integer :teacher_id
      t.string :institution

      t.timestamps
    end
  end
end
