class CreateTsus < ActiveRecord::Migration[5.2]
  def change
    create_table :tsus do |t|
      t.references :type, foreign_key: true, index: true
      t.references :subscription, foreign_key: true, index: true
      t.timestamps
    end
  end
end
