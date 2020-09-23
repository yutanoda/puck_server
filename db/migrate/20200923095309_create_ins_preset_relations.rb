class CreateInsPresetRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :ins_preset_relations do |t|
      t.integer :instrument_id
      t.integer :preset_id

      t.timestamps
    end
    add_index :ins_preset_relations, :instrument_id
    add_index :ins_preset_relations, :preset_id
    add_index :ins_preset_relations, [:instrument_id, :preset_id], unique: true
  end
end
