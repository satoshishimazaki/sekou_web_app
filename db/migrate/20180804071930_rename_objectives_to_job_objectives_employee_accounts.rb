class RenameObjectivesToJobObjectivesEmployeeAccounts < ActiveRecord::Migration[5.2]
  def change
    rename_column :job_objectives_employee_accounts, :employee_id, :employee_account_id
    rename_column :job_objectives_employee_accounts, :objectives_id, :job_objective_id
  end
end
