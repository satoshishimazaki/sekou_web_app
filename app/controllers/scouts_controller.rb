class ScoutsController < ApplicationController
  def index
    @scout = Scout.all
  end

  def new
    @scout = Scout.new
    @user = User.find_by(id: current_user.id)
    @scout.user_id = @user.id
    @scout.client_account_id = current_client.client_account.id
  end

  def show
    @scout = Scout.find(params[:id])
  end

  def create
    @scout = Scout.new(scout_params)
    @user = User.find_by(id: current_user.id)
    # 今のままだと、employee_account と client_accountの両方にログインしてないといけない状態なので、dbからemployeeaccountのidを取ってくる
    # 構文にする。もともと、find_by(id: [params[:id])となっていた。])
    # new actionも同様

    @scout.user_id = @user.id
    @scout.client_account_id = current_client.client_account.id

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
        :user_id)
    end

end
