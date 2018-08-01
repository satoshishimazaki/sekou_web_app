class EmployeeAccount < ApplicationRecord

#次の変数が空欄でないことを検証する。
# :employee_account_faculty, :employee_account_university,:employee_account_graduate,:employee_account_not_public_company
# は検証対象外

has_many :scout #, :employee_objective


  validates :last_name,
            :first_name,
            :last_name_kana,
            :phone_number,
            :email,
            :birth,
            :sex,
            :employment_status,
            :address_post,
            :prefecture_id,
            :address_city,
            :address_building,
            :desired_salary,
            :personal_summary,
  presence: true

  validates :last_name,
            :first_name,
            :last_name_kana,
            :first_name_kana,
            :email,
            :employment_status,
            :address_city,
            :address_building,
  length: { maximum: 30, too_long: "最大%{count}文字まで使用できます"}

  validates :personal_summary,
  length: { maximum: 300, too_long: "最大%{count}文字まで使用できます"}



end
