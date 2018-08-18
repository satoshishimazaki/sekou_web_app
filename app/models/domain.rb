class Domain < ApplicationRecord
  has_many :client_domains
  has_many :clients, through: :client_domains
  has_many :career_domains
  has_many :careers, through: :career_domains
end
