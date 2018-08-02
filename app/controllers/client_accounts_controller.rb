class ClientAccountsController < ApplicationController
  def index
    @client_account = ClientAccount.all

  end

  def new
    @client_account = ClientAccount.new
  end

  def show
    @client_account = ClientAccount.find(params[:id])
  end

  def create
    @client_account = ClientAccount.new(client_account_params)
    @client_account.client_id = current_client.id
    #入力内容の検証を行い、正しく入力されてればindexへ、そうでなければ、新規入力フォームを作成する。

    if @client_account.save
      redirect_to client_account_path(@client_account)
    else
      render action: :new
    end
  end

  def edit
    @client_account = ClientAccount.find(params[:id])
  end

  def update
    @client_account = ClientAccount.find(params[:id])
    @client_account.update(client_account_params)
    redirect_to client_accounts_path(@client_account)
  end

# employee accountだけじゃなくて関連するもの全て消去だと思うので、
#　コーディングはし直す必要あり。 edited by takuya 08.01

#  def destroy
#    @employee_account = EmployeeAccount.find(params[:id]).destroy
#    redirect_to employee_accounts_path(@employee_account)
#  end

  private
    def client_account_params
      params.require(:client_account).permit(
        :name,
        :address_post,
        {:domain_ids => []})
    end
end
