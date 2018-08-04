class CreateQualificationEmployeeAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :qualification_employee_accounts do |t|
      t.integer :qualification_id
      t.integer :employee_account_id

      t.timestamps
    end
  end
end
