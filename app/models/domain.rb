class Domain < ApplicationRecord
  has_many :client_account_domains
  has_many :client_accounts, through: :client_account_domains
end
