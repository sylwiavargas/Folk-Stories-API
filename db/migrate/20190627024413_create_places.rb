class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.decimal :latitude, { precision: 10, scale: 6 }, default: null
      t.decimal :longitude, { precision: 10, scale: 6 }, default: null
      t.integer :zip, default: null
      t.references :contry, foreign_key: true, index: true

      t.timestamps
    end
  end
end
