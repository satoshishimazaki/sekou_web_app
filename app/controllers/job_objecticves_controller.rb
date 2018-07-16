class JobObjecticvesController < ApplicationController
  before_action :set_job_objecticfe, only: [:show, :edit, :update, :destroy]

  # GET /job_objecticves
  # GET /job_objecticves.json
  def index
    @job_objecticves = JobObjecticfe.all
  end

  # GET /job_objecticves/1
  # GET /job_objecticves/1.json
  def show
  end

  # GET /job_objecticves/new
  def new
    @job_objecticfe = JobObjecticfe.new
  end

  # GET /job_objecticves/1/edit
  def edit
  end

  # POST /job_objecticves
  # POST /job_objecticves.json
  def create
    @job_objecticfe = JobObjecticfe.new(job_objecticfe_params)

    respond_to do |format|
      if @job_objecticfe.save
        format.html { redirect_to @job_objecticfe, notice: 'Job objecticfe was successfully created.' }
        format.json { render :show, status: :created, location: @job_objecticfe }
      else
        format.html { render :new }
        format.json { render json: @job_objecticfe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_objecticves/1
  # PATCH/PUT /job_objecticves/1.json
  def update
    respond_to do |format|
      if @job_objecticfe.update(job_objecticfe_params)
        format.html { redirect_to @job_objecticfe, notice: 'Job objecticfe was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_objecticfe }
      else
        format.html { render :edit }
        format.json { render json: @job_objecticfe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_objecticves/1
  # DELETE /job_objecticves/1.json
  def destroy
    @job_objecticfe.destroy
    respond_to do |format|
      format.html { redirect_to job_objecticves_url, notice: 'Job objecticfe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_objecticfe
      @job_objecticfe = JobObjecticfe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_objecticfe_params
      params.require(:job_objecticfe).permit(:name)
    end
end
