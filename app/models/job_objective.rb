class JobObjective < ApplicationRecord
  has_many :job_objective_employee_accounts
  has_many :employee_accounts, through: :job_objective_employee_accounts
  # belongs_to :employee_objective, :careers_objective
end
