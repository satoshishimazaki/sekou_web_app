class QualificationEmployeeAccount < ApplicationRecord
  belongs_to :qualification
  belongs_to :user
end
