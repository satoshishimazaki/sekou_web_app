class ScoutExclusion < ApplicationRecord
    belongs_to :client_account
    belongs_to :employee_account
end
