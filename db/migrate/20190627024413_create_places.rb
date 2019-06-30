class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name_eng
      t.string :name_pl
      t.decimal :latitude, { precision: 10, scale: 6 }
      t.decimal :longitude, { precision: 10, scale: 6 }
      t.integer :zip
      t.references :country, foreign_key: true, index: true

      t.timestamps
    end
  end
end
