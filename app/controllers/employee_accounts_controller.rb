class EmployeeAccountsController < ApplicationController
  def index
    @employee_account = EmployeeAccount.all
  end

  def new
    @employee_account = EmployeeAccount.new
  end

  def show
    @employee_accout = EmployeeAccount.find(params[:id])
  end

  def create
    @employee_account = EmployeeAccount.new(employee_account_params)
    puts(@employee_account.last_name)
    #入力内容の検証を行い、正しく入力されてればindexへ、そうでなければ、新規入力フォームを作成する。

    if @employee_account.save
      redirect_to employee_accounts_path(@employee_account)
    else
      render action: :new
    end
  end

  def edit
    @employee_account = EmployeeAccount.find(params[:id])
  end

  def update
    @employee_account = EmployeeAccount.find(params[:id])
    @employee_account.update(employee_account_params)
  end

  def delete
  end

  private
    def employee_account_params
      params.require(:employee_account).permit(:last_name)
#        :first_name,
#        :last_name_kana,
#        :first_name_kana,
#        :phone_number,
#        :birth,
#        :employee_account_sex,
#        :employee_account_employment_status,
#        :employee_account_address_post,
#        :employee_account_prefecture_id,
#        :employee_account_address_city,
#        :employee_account_address_building,
#        :employee_account_university,
#        :employee_account_faculty,
#        :employee_account_graduate,
#        :employee_account_desired_salary,
#        :employee_account_personal_summary,
#        :employee_account_not_public_company
    end

end
