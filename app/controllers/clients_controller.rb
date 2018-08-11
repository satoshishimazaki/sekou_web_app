class ClientsController < ApplicationController
before_action :authenticate_user!
  def index

    #初回ログイン時はnew画面を強制表示させ、企業情報の登録を促す。
    if current_client == nil
      redirect_to new_client_account_path
    else
      @client = Client.all
    end
  end

  def new
    @client = Client.new
  end

  def show
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(client_params)
    @client.client_id = current_client.id
    #入力内容の検証を行い、正しく入力されてればindexへ、そうでなければ、新規入力フォームを作成する。

    if @client.save
      redirect_to client_path(@client)
    else
      render action: :new
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    @client.update(client_params)
    redirect_to clients_path(@client)
  end

# employee accountだけじゃなくて関連するもの全て消去だと思うので、
#　コーディングはし直す必要あり。 edited by takuya 08.01

#  def destroy
#    @employee_account = EmployeeAccount.find(params[:id]).destroy
#    redirect_to employee_accounts_path(@employee_account)
#  end

  private
    def client_params
      params.require(:client).permit(
        :name,
        :address_post,
        :prefecture_id,
        :address_city,
        :address_building,
        :established,
        :president,
        :employees_number,
        :employees_memo,
        :stock,
        :stock_memo,
        :homepage,
        :time_start,
        :time_end,
        :time_memo,
        :average_ages,
        :domain_text,
        :welfare,
        :day_off,
        :recruiter,
        {:domain_ids => []})
    end
end
