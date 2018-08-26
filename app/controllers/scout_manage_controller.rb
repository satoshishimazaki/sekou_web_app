class ScoutManageController < ApplicationClientController
  layout "client_application"
  def index
    @client = Client.find_by(id: current_client.id)
  end
end
