class CreateScoreTypes < ActiveRecord::Migration
  def change
    create_table :score_types do |t|
      t.string :noun
      t.text :description
      t.float :weight

      t.timestamps
    end
  end
end
