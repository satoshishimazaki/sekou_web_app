class ClientDomain < ApplicationRecord
  belongs_to :client
  belongs_to :domain
end
