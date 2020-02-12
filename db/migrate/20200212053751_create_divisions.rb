class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|
      t.string :weight_class
      t.boolean :gi
      t.string :skill
      t.integer :tournament_id

      t.timestamps
    end
  end
end
