class ScoutViewsController < ApplicationController
  def index
    @scouts = Scout.all
    @user   = User.find_by(id: current_user.id)
    @client = Client.find_by(id: current_client.id)
  end
end
