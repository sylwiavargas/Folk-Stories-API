class CreateYearEras < ActiveRecord::Migration[5.2]
  def change
    create_table :year_eras do |t|
      t.string :yera
      t.references :year, foreign_key: true, index: true
      t.references :era, foreign_key: true, index: true
      t.timestamps
    end
  end
end
