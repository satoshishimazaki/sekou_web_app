class Qualification < ApplicationRecord
  has_many :qualification_users
  has_many :users, through: :qualification_users
end
