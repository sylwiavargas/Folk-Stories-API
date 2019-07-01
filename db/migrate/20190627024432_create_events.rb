class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title_eng, default: "Happened today:"
      t.string :title_pl, default: "Wydarzyło się dzisiaj:"
      t.string :description_eng
      t.string :description_pl
      t.references :year, foreign_key: true, index: true, default: ""
      t.references :month_day, foreign_key: true, index: true, default: ""
      t.integer :mmddyyy
      t.string :read_more_eng, default: "-"
      t.string :read_more_pl, default: "-"
      t.boolean :published, default: false
      t.references :place, foreign_key: true, index: true, default: ""
      t.references :country, foreign_key: true, index: true
      t.timestamps
    end
  end
end
