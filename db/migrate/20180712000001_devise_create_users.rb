# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      t.string   :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at

      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :phone_number
      t.date :birth
      t.string :sex
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
      t.integer :quit_flag

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :confirmation_token,   unique: true
    add_index :users, :unlock_token,         unique: true
  end

  #求職者の職歴
  create_table :careers do |t|
    t.integer :user_id
    t.string :company_name
    t.date :start
    t.date :end
    t.integer :employee_pattern_id
    t.string :career_outline

    t.timestamps
  end

  #求職者の職種
  create_table :job_objectives do |t|
    t.string :name

    t.timestamps
  end

  #求職者の資格
  create_table :qualifications do |t|
    t.string :name

    t.timestamps
  end

  #職歴の雇用形態
  create_table :employment_patterns do |t|
    t.string :name

    t.timestamps
  end

  #求職者の職歴と職種の中間テーブル
  create_table :careers_objectives do |t|
    t.integer :career_id
    t.integer :objective_id

    t.timestamps
  end

  create_table :job_objective_users do |t|
    t.integer :user_id
    t.integer :job_objective_id

    t.timestamps
  end

  create_table :qualification_users do |t|
    t.integer :qualification_id
    t.integer :user_id

    t.timestamps
  end
end
