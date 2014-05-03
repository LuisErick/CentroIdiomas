class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :matriculation_id
      t.date :date
      t.float :amount

      t.timestamps
    end
  end
end
