class ClientsCompaniesController < ApplicationController
  before_action :set_clients_company, only: [:show, :edit, :update, :destroy]

  # GET /clients_companies
  # GET /clients_companies.json
  def index
    @clients_companies = ClientsCompany.all
  end

  # GET /clients_companies/1
  # GET /clients_companies/1.json
  def show
  end

  # GET /clients_companies/new
  def new
    @clients_company = ClientsCompany.new
  end

  # GET /clients_companies/1/edit
  def edit
  end

  # POST /clients_companies
  # POST /clients_companies.json
  def create
    @clients_company = ClientsCompany.new(clients_company_params)

    respond_to do |format|
      if @clients_company.save
        format.html { redirect_to @clients_company, notice: 'Clients company was successfully created.' }
        format.json { render :show, status: :created, location: @clients_company }
      else
        format.html { render :new }
        format.json { render json: @clients_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients_companies/1
  # PATCH/PUT /clients_companies/1.json
  def update
    respond_to do |format|
      if @clients_company.update(clients_company_params)
        format.html { redirect_to @clients_company, notice: 'Clients company was successfully updated.' }
        format.json { render :show, status: :ok, location: @clients_company }
      else
        format.html { render :edit }
        format.json { render json: @clients_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients_companies/1
  # DELETE /clients_companies/1.json
  def destroy
    @clients_company.destroy
    respond_to do |format|
      format.html { redirect_to clients_companies_url, notice: 'Clients company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clients_company
      @clients_company = ClientsCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clients_company_params
      params.require(:clients_company).permit(:name, :address_post, :prefecture_id, :address_city, :address_building, :established, :president, :employees_number, :employees_memo, :stock, :stock_memo, :homepage, :time_start, :time_end, :time_memo, :average_ages, :domain_text, :welfare, :day_off, :recruiter)
    end
end
