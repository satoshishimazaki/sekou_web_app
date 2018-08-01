class EmployeesObjective < ApplicationRecord
  belongs_to :employee_account, :job_objective
end
