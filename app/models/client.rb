class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  #  and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable
  has_many :scouts
  has_many :users, through: :scouts
  has_many :client_domains
  has_many :domains, through: :client_domains
end
