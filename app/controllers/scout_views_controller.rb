class ScoutViewsController < ApplicationController
  def index
    @scouts = Scout.all
    @user = User.find_by(id: current_user.id)
    @client_account   = ClientAccount.find_by(id: current_client.client_account.id)
  end
end
