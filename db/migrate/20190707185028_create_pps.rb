class CreatePps < ActiveRecord::Migration[5.2]
  def change
    create_table :pps do |t|
      t.references :place, foreign_key: true, index: true
      t.references :person, foreign_key: true, index: true
      t.string :description_eng
      t.string :description_eng
      t.timestamps
    end
  end
end
