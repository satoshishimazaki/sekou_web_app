class EmployeesAccountsController < ApplicationController

  def index
    @employees_accounts = Employees_account #.allが必要だと思われる
  end

  def edit
  end

  def new
    @employees_account = Employees_account.new
  end

  def delete
  end

end
