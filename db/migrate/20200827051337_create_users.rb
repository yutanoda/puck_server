class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :account_id
      t.string :email
      t.integer :authority
      t.string :password_digest
      t.string :remember_digest

      t.timestamps
    end
  end
end
