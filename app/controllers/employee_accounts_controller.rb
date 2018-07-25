class EmployeeAccountsController < ApplicationController

  def index
    @employee_accounts = EmployeeAccount.all #.allが必要だと思われる

    #エラーメッセージは次の通り
    #Unable to autoload constant Employees_account, expected /Users/zielson_account/sekou.com/sekou_web_app/app/models/employees_account.rb to define it

  end

  def edit
  end

  def new
    @employee_account = EmployeeAccount.new
  end

  def delete
  end

end
