class ScoutViewsController < ApplicationUserController
  layout "user_application"

  def index
    @scout = Scout.where(user_id: current_user.id).order(id: "DESC")
    @user   = User.find_by(id: current_user.id)
  end

  def detail
    @scout = Scout.find(params[:id])
    @client = Client.find_by(id: @scout.client_id)
  end

  def agree_window
    @scout = Scout.find(params[:id])
    # @scout.update(agreement_count: 1)
    # redirect_to scout_views_path
  end

  def agree
    @scout = Scout.find(params[:id])
    @scout.update(agreement_count: 1)
  end

end
