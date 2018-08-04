class CreateEmployeesObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :employees_objectives do |t|
      t.integer :employee_id
      t.integer :objectives_id

      t.timestamps
    end

    rename_table :employees_objectives, :job_objectives_employee_accounts

    rename_column :job_objectives_employee_accounts, :employee_id, :employee_account_id
    rename_column :job_objectives_employee_accounts, :objectives_id, :job_objective_id

    rename_table :job_objectives_employee_accounts, :job_objective_employee_accounts

  end
end
