class EmployeeAccountsController < ApplicationController

  def index
    @employee_account = EmployeeAccount.all #.allが必要だと思われる
  end

  def edit
  end

  def new
    @employee_account = EmployeeAccount.new
  end

  def show
  end

  def create
    @employee_account = EmployeeAccount.new(employee_account_params)
    @employee_account.save
    redirect_to employee_accounts_path
  end

  def employee_account_params
    params[:employee_account].permit(
      :employee_account_last_name,
      :employee_account_first_name,
      :employee_account_last_name_kana,
      :employee_account_first_name_kana,
      :employee_account_phone_number,
      :employee_account_email,
      :employee_account_birth,
      :employee_account_sex,
      :employee_account_employment_status,
      :employee_account_address_post,
      :employee_account_prefecture_id,
      :employee_account_address_city,
      :employee_account_address_building,
      :employee_account_university,
      :employee_account_faculty,
      :employee_account_graduate,
      :employee_account_desired_salary,
      :employee_account_personal_summary,
      :employee_account_not_public_company
    )
  end

  def delete
  end


end
