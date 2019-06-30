class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :death
      t.integer :birth
      t.string :bio_eng
      t.string :bio_pl
      t.string :picture
      t.string :quote_eng
      t.string :quote_pl
      t.string :read_more_eng, default: "-"
      t.string :read_more_pl, default: "-"
      t.boolean :published, default: false
      t.timestamps
    end
  end
end
