class CreateEps < ActiveRecord::Migration[5.2]
  def change
    create_table :eps do |t|
      t.references :event, foreign_key: true, index: true
      t.references :person, foreign_key: true, index: true
      t.timestamps
    end
  end
end
