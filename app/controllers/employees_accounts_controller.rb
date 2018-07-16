class EmployeesAccountsController < ApplicationController
  before_action :set_employees_account, only: [:show, :edit, :update, :destroy]

  # GET /employees_accounts
  # GET /employees_accounts.json
  def index
    @employees_accounts = EmployeesAccount.all
  end

  # GET /employees_accounts/1
  # GET /employees_accounts/1.json
  def show
  end

  # GET /employees_accounts/new
  def new
    @employees_account = EmployeesAccount.new
  end

  # GET /employees_accounts/1/edit
  def edit
  end

  # POST /employees_accounts
  # POST /employees_accounts.json
  def create
    @employees_account = EmployeesAccount.new(employees_account_params)

    respond_to do |format|
      if @employees_account.save
        format.html { redirect_to @employees_account, notice: 'Employees account was successfully created.' }
        format.json { render :show, status: :created, location: @employees_account }
      else
        format.html { render :new }
        format.json { render json: @employees_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees_accounts/1
  # PATCH/PUT /employees_accounts/1.json
  def update
    respond_to do |format|
      if @employees_account.update(employees_account_params)
        format.html { redirect_to @employees_account, notice: 'Employees account was successfully updated.' }
        format.json { render :show, status: :ok, location: @employees_account }
      else
        format.html { render :edit }
        format.json { render json: @employees_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees_accounts/1
  # DELETE /employees_accounts/1.json
  def destroy
    @employees_account.destroy
    respond_to do |format|
      format.html { redirect_to employees_accounts_url, notice: 'Employees account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employees_account
      @employees_account = EmployeesAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employees_account_params
      params.require(:employees_account).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :phone_number, :email, :birth, :sex, :password, :employment_status, :address_post, :prefecture_id, :address_city, :address_building, :university, :faculty, :graduate, :desired_salary, :personal_summary, :not_public_company)
    end
end
