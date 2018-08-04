class RenameJobObjectivesEmployeeAccountsToJobObjectiveEmployeeAccounts < ActiveRecord::Migration[5.2]
  def change
    rename_table :job_objectives_employee_accounts, :job_objective_employee_accounts
  end
end
