class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :death
      t.integer :birth
      t.string :bio
      t.string :picture
      t.string :quote
      t.string :read_more, default: "-"
      t.string :language, default: "English"
      t.boolean :published, default: false
      t.timestamps
    end
  end
end
