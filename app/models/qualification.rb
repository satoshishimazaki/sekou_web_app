class Qualification < ApplicationRecord
  has_many :qualification_employee_accounts
  has_many :users, through: :qualification_employee_accounts
end
