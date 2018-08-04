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

    create_table :careers do |t|
      t.integer :employee_id
      t.string :company_name
      t.date :start
      t.date :end
      t.integer :employee_pattern_id
      t.string :career_outline

      t.timestamps
    end

    create_table :job_objectives do |t|
      t.string :name

      t.timestamps
    end

    create_table :qualifications do |t|
      t.string :name

      t.timestamps
    end

    create_table :employment_patterns do |t|
      t.string :name

      t.timestamps
    end

    create_table :careers_objectives do |t|
      t.integer :career_id
      t.integer :objective_id

      t.timestamps
    end

    create_table :job_objective_employee_accounts do |t|
      t.integer :employee_account_id
      t.integer :job_objective_id

      t.timestamps
    end

    create_table :qualification_employee_accounts do |t|
      t.integer :qualification_id
      t.integer :employee_account_id

      t.timestamps
    end
  end
end
