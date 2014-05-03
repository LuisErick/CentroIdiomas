class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :person_id
      t.integer :reference_id

      t.timestamps
    end
  end
end
