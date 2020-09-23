class CreatePresets < ActiveRecord::Migration[6.0]
  def change
    create_table :presets do |t|
      t.string :name

      t.timestamps
    end
  end
end
