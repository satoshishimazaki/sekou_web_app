class CreateEmployeesObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :employees_objectives do |t|
      t.integer :objectives_id

      t.timestamps
    end
  end
end
