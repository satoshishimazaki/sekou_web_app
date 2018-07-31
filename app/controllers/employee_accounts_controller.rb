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
      params.require(:employee_account).permit(
        :last_name,
        :first_name,
        :last_name_kana,
        :first_name_kana,
        :phone_number,
        :birth,
        :sex,
        :employment_status,
        :address_post,
        :prefecture_id,
        :address_city,
        :address_building,
        :university,
        :faculty,
        :graduate,
        :desired_salary,
        :personal_summary,
        :not_public_company)
    end

end
