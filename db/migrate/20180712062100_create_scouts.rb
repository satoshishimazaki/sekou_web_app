class CreateScouts < ActiveRecord::Migration[5.2]
  def change
    create_table :scouts do |t|
      t.integer :id
      t.integer :client_id
      t.integer :employee_id
      t.string :summary
      t.string :content

      t.timestamps
    end
  end
end
