class CreateMonthDays < ActiveRecord::Migration[5.2]
  def change
    create_table :month_days do |t|
      t.integer :mmdd
      t.references :month, foreign_key: true, index: true
      t.references :day, foreign_key: true, index: true
      t.timestamps
    end
  end
end
