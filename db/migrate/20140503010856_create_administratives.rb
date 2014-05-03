class CreateAdministratives < ActiveRecord::Migration
  def change
    create_table :administratives do |t|
      t.integer :person_id

      t.timestamps
    end
  end
end
