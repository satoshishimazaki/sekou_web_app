class QualificationEmployeeAccount < ApplicationRecord
  belongs_to :qualification
  belongs_to :employee_account
end
