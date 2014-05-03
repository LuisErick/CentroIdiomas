class CreateSecretaries < ActiveRecord::Migration
  def change
    create_table :secretaries do |t|
      t.integer :administrative_id

      t.timestamps
    end
  end
end
