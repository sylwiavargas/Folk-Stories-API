class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.string :name_eng
      t.string :name_pl
      t.timestamps
    end
  end
end
