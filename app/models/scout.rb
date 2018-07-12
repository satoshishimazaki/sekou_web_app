class Scout < ApplicationRecord
    belongs_to :employee_id, class_name: "User"
    belongs_to :client_id, class_name: "Client"
end
