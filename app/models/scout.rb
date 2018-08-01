class Scout < ApplicationRecord
    belongs_to :employee_account
    has_many :scouts_message
end
