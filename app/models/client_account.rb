class ClientAccount < ApplicationRecord
  has_many :scout
  has_many :client_account_domains
  has_many :domains, through: :client_account_domains
  belongs_to :client, inverse_of: :userinfo, optional: true
end
