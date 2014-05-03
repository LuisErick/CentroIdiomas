class CreateMatriculations < ActiveRecord::Migration
  def change
    create_table :matriculations do |t|
      t.integer :language_id
      t.integer :student_id
      t.integer :administrative_id
      t.integer :course_type_id
      t.date :date

      t.timestamps
    end
  end
end
