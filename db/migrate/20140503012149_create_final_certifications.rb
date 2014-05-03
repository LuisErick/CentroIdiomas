class CreateFinalCertifications < ActiveRecord::Migration
  def change
    create_table :final_certifications do |t|
      t.integer :final_grade_id

      t.timestamps
    end
  end
end
