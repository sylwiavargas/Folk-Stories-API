class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title_eng, default: "Happened today:"
      t.string :title_pl, default: "Wydarzyło się dzisiaj:"
      t.string :description_eng
      t.string :description_pl
      t.integer :date
      t.integer :year
      t.integer :month
      t.integer :day
      t.string :read_more_eng, default: "-"
      t.string :read_more_pl, default: "-"
      t.boolean :published, default: false
      t.references :place, foreign_key: true, index: true, default: ""
      t.references :country, foreign_key: true, index: true
      t.timestamps
    end
  end
end
