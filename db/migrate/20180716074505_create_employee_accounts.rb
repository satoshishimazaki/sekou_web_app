class CreateEmployeeAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_accounts do |t|
      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :phone_number
      t.string :email
      t.date :birth
      t.string :sex
      t.string :password
      t.string :employment_status
      t.string :address_post
      t.integer :prefecture_id
      t.string :address_city
      t.string :address_building
      t.string :university
      t.string :faculty
      t.integer :graduate
      t.integer :desired_salary
      t.string :personal_summary
      t.string :not_public_company

      t.timestamps
    end

    add_reference :employee_accounts, :user, foreign_key: true

    
  end
end
