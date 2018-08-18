class Career < ApplicationRecord
  has_many :career_domains
  has_many :domains, through: :career_domains
end
