class CreateEmployeesObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :employees_objectives do |t|
      t.integer :employee_id
      t.integer :objectives_id

      t.timestamps
    end
  end
end
