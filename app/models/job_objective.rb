class JobObjective < ApplicationRecord
  has_many :job_objective_users
  has_many :users, through: :job_objective_users
end
