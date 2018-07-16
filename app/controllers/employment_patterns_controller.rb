class EmploymentPatternsController < ApplicationController
  before_action :set_employment_pattern, only: [:show, :edit, :update, :destroy]

  # GET /employment_patterns
  # GET /employment_patterns.json
  def index
    @employment_patterns = EmploymentPattern.all
  end

  # GET /employment_patterns/1
  # GET /employment_patterns/1.json
  def show
  end

  # GET /employment_patterns/new
  def new
    @employment_pattern = EmploymentPattern.new
  end

  # GET /employment_patterns/1/edit
  def edit
  end

  # POST /employment_patterns
  # POST /employment_patterns.json
  def create
    @employment_pattern = EmploymentPattern.new(employment_pattern_params)

    respond_to do |format|
      if @employment_pattern.save
        format.html { redirect_to @employment_pattern, notice: 'Employment pattern was successfully created.' }
        format.json { render :show, status: :created, location: @employment_pattern }
      else
        format.html { render :new }
        format.json { render json: @employment_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employment_patterns/1
  # PATCH/PUT /employment_patterns/1.json
  def update
    respond_to do |format|
      if @employment_pattern.update(employment_pattern_params)
        format.html { redirect_to @employment_pattern, notice: 'Employment pattern was successfully updated.' }
        format.json { render :show, status: :ok, location: @employment_pattern }
      else
        format.html { render :edit }
        format.json { render json: @employment_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employment_patterns/1
  # DELETE /employment_patterns/1.json
  def destroy
    @employment_pattern.destroy
    respond_to do |format|
      format.html { redirect_to employment_patterns_url, notice: 'Employment pattern was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment_pattern
      @employment_pattern = EmploymentPattern.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employment_pattern_params
      params.require(:employment_pattern).permit(:name)
    end
end
