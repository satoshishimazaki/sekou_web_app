class JobObjective < ApplicationRecord
  has_many :job_objective_employee_accounts
  has_many :users, through: :job_objective_employee_accounts
end
