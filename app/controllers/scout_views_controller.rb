class ScoutViewsController < ApplicationUserController
  def index
    @scout = Scout.where(user_id: current_user.id)
    @user   = User.find_by(id: current_user.id)
    @client = Client.where(params[:id])
  end

  def detail
    @scout = Scout.find(params[:id])
    @client = Client.find_by(id: @scout.client_id)
  end

  def agree
      @scout = Scout.find(params[:id])
      @scout.update(agreement_count: 1)
      redirect_to scout_views_path
  end

end
