class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.string :relationship
      t.references :person_one, foreign_key: {to_table: :people}, index: true
      t.references :person_two, foreign_key: {to_table: :people}, index: true
      t.timestamps
    end
  end
end
