class ScoutViewsController < ApplicationController
  def index
    @scouts = Scout.all
    @employee_account = EmployeeAccount.find_by(id: current_user.employee_account.id)
    @client_account   = ClientAccount.find_by(id: current_client.client_account.id)
  end
end
