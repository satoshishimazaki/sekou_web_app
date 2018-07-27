class EmployeeAccountsController < ApplicationController

  def index
    @employee_account = EmployeeAccount.all #.allが必要だと思われる
  end

  def edit
  end

  def new
    @employee_account = EmployeeAccount.new
  end

  def create
  end

  def delete
  end

end
