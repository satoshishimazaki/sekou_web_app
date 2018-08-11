class Scout < ApplicationRecord
    belongs_to :user
    belongs_to :client_account
    has_many :scouts_message
end
