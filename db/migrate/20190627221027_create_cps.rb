class CreateCps < ActiveRecord::Migration[5.2]
  def change
    create_table :cps do |t|
      t.references :country, foreign_key: true, index: true
      t.references :person, foreign_key: true, index: true
      t.timestamps
    end
  end
end
