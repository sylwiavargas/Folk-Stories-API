class CreateContinents < ActiveRecord::Migration[5.2]
  def change
    create_table :continents do |t|
      t.string :name_eng
      t.string :name_pl

      t.timestamps
    end
  end
end
