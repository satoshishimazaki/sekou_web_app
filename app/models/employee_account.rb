class EmployeeAccount < ApplicationRecord

#次の変数が空欄でないことを検証する。
# :employee_account_faculty, :employee_account_university,:employee_account_graduate,:employee_account_not_public_company
# は検証対象外

#  validates :employee_account_last_name,
#            :employee_account_first_name,
#            :employee_account_last_name_kana,
#            :employee_account_first_name_kana,
#            :employee_account_phone_number,
#            :employee_account_email,
#            :employee_account_birth,
#            :employee_account_sex,
#            :employee_account_employment_status,
#            :employee_account_address_post,
#            :employee_account_prefecture_id,
#            :employee_account_address_city,
#            :employee_account_address_building,
#            :employee_account_desired_salary,
#            :employee_account_personal_summary,
#  presence: true

#  validates :employee_account_last_name,
#            :employee_account_first_name,
#            :employee_account_last_name_kana,
#            :employee_account_first_name_kana,
#            :employee_account_email,
#            :employee_account_employment_status,
#            :employee_account_address_post,
#            :employee_account_address_city,
#            :employee_account_address_building,
#  length: { maximum: 30, too_long: "最大%{count}文字まで使用できます"}
#
#  validates :employee_account_personal_summary,
#  length: { maximum: 300, too_long: "最大%{count}文字まで使用できます"}



end
