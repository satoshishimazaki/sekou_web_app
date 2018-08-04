class JobObjectiveEmployeeAccount < ApplicationRecord
  belongs_to :employee_account
  belongs_to :job_objective
end
