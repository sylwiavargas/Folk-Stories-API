class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name_pl
      t.string :name_eng
      t.references :continent, foreign_key: true, index: true
      t.timestamps
    end
  end
end
