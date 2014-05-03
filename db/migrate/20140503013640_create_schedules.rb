class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :days
      t.integer :numberdays
      t.time :arrival_time
      t.time :desmissal_time

      t.timestamps
    end
  end
end
