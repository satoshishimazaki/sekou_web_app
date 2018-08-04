class Qualification < ApplicationRecord
  has_many :qualification_employee_accounts
  has_many :employee_account, through: :qualification_employee_accounts
end
