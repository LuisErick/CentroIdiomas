class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :schedule_id
      t.integer :teacher_id
      t.integer :room_id
      t.date :date

      t.timestamps
    end
  end
end
