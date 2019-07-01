class CreateMonths < ActiveRecord::Migration[5.2]
  def change
    create_table :months do |t|
      t.integer :month
      t.string :name_eng
      t.string :name_pl
      t.timestamps
    end
  end
end
