class RenameEmployeesObjectivesToJobObjectiveEmployeeAccount < ActiveRecord::Migration[5.2]
  def change
    rename_table :employees_objectives, :job_objectives_employee_accounts
  end
end
