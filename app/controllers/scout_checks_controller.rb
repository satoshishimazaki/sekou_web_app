class ScoutChecksController < ApplicationClientController
  def index
    @client = Client.find_by(id: current_client.id)
    @scout = Scout.where(client_id: @client.id)
    @user = User.all
  end
end
