class CreateScoutExclusions < ActiveRecord::Migration[5.2]
    def change
        create_table :scout_exclusions do |t|
            t.references :client_account, foreign_key: true
            t.references :employee_account, foreign_key: true

            t.timestamps
        end
    end
end
