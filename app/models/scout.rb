class Scout < ApplicationRecord
    belongs_to :user
    belongs_to :client
    has_many :scouts_message
end
