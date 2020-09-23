class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :name
      t.integer :status
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
