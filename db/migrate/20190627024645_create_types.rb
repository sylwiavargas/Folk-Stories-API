class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|

      t.timestamps
    end
  end
end