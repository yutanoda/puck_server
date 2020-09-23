class CreateUserContractRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_contract_relations do |t|
      t.integer :user_id
      t.integer :contract_id

      t.timestamps
    end
    add_index :user_contract_relations, :user_id
    add_index :user_contract_relations, :contract_id
    add_index :user_contract_relations, [:user_id, :contract_id], unique: true
  end
end
