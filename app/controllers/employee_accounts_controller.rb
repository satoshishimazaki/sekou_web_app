class EmployeeAccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.employee_account ==  nil
      redirect_to new_employee_account_url
    else
      @employee_account = EmployeeAccount.all
    end
  end

  def new
    @employee_account = EmployeeAccount.new
  end

  def show
    @employee_account = EmployeeAccount.find(params[:id])
  end

  def create
    @employee_account = EmployeeAccount.new(employee_account_params)
    @employee_account.user_id = current_user.id
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
    redirect_to employee_accounts_path(@employee_account)
  end

# employee accountだけじゃなくて関連するもの全て消去だと思うので、
#　コーディングはし直す必要あり。 edited by takuya 08.01

#  def destroy
#    @employee_account = EmployeeAccount.find(params[:id]).destroy
#    redirect_to employee_accounts_path(@employee_account)
#  end

  private
    def employee_account_params
      params.require(:employee_account).permit(
        :last_name,
        :first_name,
        :last_name_kana,
        :first_name_kana,
        :phone_number,
        :email,
        :password,
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
        :not_public_company,
        {:qualification_ids =>[]},
        {:job_objective_ids =>[]})
    end

end
