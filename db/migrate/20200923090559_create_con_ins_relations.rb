class CreateConInsRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :con_ins_relations do |t|
      t.integer :contract_id
      t.integer :instrument_id

      t.timestamps
    end
    add_index :con_ins_relations, :contract_id
    add_index :con_ins_relations, :instrument_id
    add_index :con_ins_relations, [:contract_id, :instrument_id], unique: true
  end
end
