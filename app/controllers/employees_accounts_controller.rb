class EmployeesAccountsController < ApplicationController

  def index
    @employees_accounts = Employees_account
  end

  def edit
  end

  def new
    @employees_account = Employees_account.new
  end

  def delete
  end

end
