class Scout < ApplicationRecord
    belongs_to :employee_account, :clients_company
    has_many :scouts_message
end
