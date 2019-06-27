class CreateEps < ActiveRecord::Migration[5.2]
  def change
    create_table :eps do |t|

      t.timestamps
    end
  end
end
