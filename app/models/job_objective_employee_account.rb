class JobObjectiveEmployeeAccount < ApplicationRecord
  belongs_to :user
  belongs_to :job_objective
end
