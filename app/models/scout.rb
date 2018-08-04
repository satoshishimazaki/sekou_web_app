class Scout < ApplicationRecord
    belongs_to :employee_account
    belongs_to :client_account
    has_many :scouts_message
end
