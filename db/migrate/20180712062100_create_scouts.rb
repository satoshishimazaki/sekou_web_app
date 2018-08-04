class CreateScouts < ActiveRecord::Migration[5.2]
  def change
    create_table :scouts do |t|
      t.integer :agreement_count
      t.integer :client_id       ,foreign_key: true
      t.integer :employee_id     ,foreign_key: true
      t.string :summary
      t.string :content

      t.timestamps
    end

    add_index :scouts ,:client_id
    add_index :scouts ,:employee_id
    add_index :scouts ,[:client_id,:employee_id], unique:true

    add_reference :scouts, :client_account, foreign_key: true
    add_reference :scouts, :employee_account, foreign_key: true
  end

end
