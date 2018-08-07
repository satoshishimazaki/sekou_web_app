class ScoutsController < ApplicationController
  def index
    @scout = Scout.all
  end

  def new
    @scout = Scout.new
    @employee_account = EmployeeAccount.find_by(id: current_user.employee_account.id)
    @scout.employee_account_id = @employee_account.id
  end

  def show
    @scout = Scout.find(params[:id])
  end

  def create
  #   put @scout
    @scout = Scout.new(scout_params)
    @employee_account = EmployeeAccount.find_by(id: current_user.employee_account.id)
    # 今のままだと、employee_account と client_accountの両方にログインしてないといけない状態なので、dbからemployeeaccountのidを取ってくる
    # 構文にする。もともと、find_by(id: [params[:id])となっていた。])
    # new actionも同様

    @scout.client_account_id = current_client.id
    #入力内容の検証を行い、正しく入力されてればindexへ、そうでなければ、新規入力フォームを作成する。
    put @scout
    if @scout.save
      redirect_to scout_path(@scout)
    else
      render action: :new
    end
  end

  def edit
    @scout = Scout.find(params[:id])
  end

  def update
    @scout = Scout.find(params[:id])
    @scout.update(scout_params)
    redirect_to scouts_path(@scout)
  end


  private
    def scout_params
      params.require(:scout).permit(
        :summary,
        :content,
        :employee_account_id)
    end

end
