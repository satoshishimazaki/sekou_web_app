class ClientAccount < ApplicationRecord
  has_many :scouts
  has_many :scout_exclusions
  has_many :employee_accounts, through: :scouts
  has_many :exclusion_employee_accounts, through: :scout_exclusions, source: :employee_accounts

  has_many :client_account_domains
  has_many :domains, through: :client_account_domains
  belongs_to :client, inverse_of: :client_account, optional: true
end
