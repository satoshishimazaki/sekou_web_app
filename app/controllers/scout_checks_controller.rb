class ScoutChecksController < ApplicationClientController
  def index
    @client = Client.find_by(id: current_client.id)
    @scout = Scout.where(client_id: @client.id)
    @scout2 = Scout.find_by(client_id: @client.id)
    @user = User.find_by(id: @scout2.user_id)
  end

end
