class ClientAccountDomain < ApplicationRecord
  has_many :client_account_domains
  has_many :domains, through: :client_account_domains
end
