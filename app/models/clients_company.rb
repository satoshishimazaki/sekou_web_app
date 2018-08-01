class ClientsCompany < ApplicationRecord
  has_many :scout , :clients_domain
end
