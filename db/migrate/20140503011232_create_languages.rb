class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :noun
      t.text :description

      t.timestamps
    end
  end
end
