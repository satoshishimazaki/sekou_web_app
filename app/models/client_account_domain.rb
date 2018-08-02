class ClientAccountDomain < ApplicationRecord
  belongs_to :client_account
  belongs_to :domain
end
