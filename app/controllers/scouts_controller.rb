class ScoutsController < ApplicationClientController
  def index
    @scout = Scout.all
    @user = User.all
  end

  def new
    @scout = Scout.new
    @user = User.find(params[:user_id])
    @client = Client.find_by(id: current_client.id)
    @scout.user_id = @user.id
    @scout.client_id = current_client.id

  end

  def show
    @scout = Scout.find(params[:id])
  end

  def create
    @scout = Scout.new(scout_params)
    @user = User.find_by(id: @scout.user_id)
    @scout.client_id = current_client.id
    @scout.update(agreement_count: 0)

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
        :agreement_count,
        :summary,
        :content,
        :client_id,
        :user_id
        )
    end

end
