class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, default: ""
      t.string :description
      t.integer :date
      t.integer :year
      t.integer :month
      t.integer :day
      t.string :read_more, default: "-"
      t.string :language
      t.references :place, foreign_key: true, index: true, default: ""
      t.references :country, foreign_key: true, index: true
      t.timestamps
    end
  end
end
