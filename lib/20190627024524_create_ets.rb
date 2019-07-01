class CreateEts < ActiveRecord::Migration[5.2]
  def change
    create_table :ets do |t|
      t.references :event, foreign_key: true, index: true
      t.references :type, foreign_key: true, index: true
      t.timestamps
    end
  end
end
