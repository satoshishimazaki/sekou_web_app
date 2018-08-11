class Domain < ApplicationRecord
  has_many :client_domains
  has_many :clients, through: :client_domains
end
