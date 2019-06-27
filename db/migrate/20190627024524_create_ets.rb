class CreateEts < ActiveRecord::Migration[5.2]
  def change
    create_table :ets do |t|

      t.timestamps
    end
  end
end
