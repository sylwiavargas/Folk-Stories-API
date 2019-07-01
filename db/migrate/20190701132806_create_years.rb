class CreateYears < ActiveRecord::Migration[5.2]
  def change
    create_table :years do |t|
      t.integer :year
      t.string :era, default: "-"
      t.timestamps
    end
  end
end
