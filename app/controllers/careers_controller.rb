class CareersController < ApplicationUserController
layout "user_application"
  def index
    @career = Career.where(user_id: current_user.id).order(id: "DESC")
  end

  def new
    @career = Career.new
  end


  def create
    @career = Career.new(career_params)
    if @career.save
      redirect_to careers_path(@career)
    else
      render action: :new
    end
  end


  def show
    @career = Career.find(params[:id])
  end

  def edit
    @career = Career.find(params[:id])
  end


  def update
    @career = Career.find(params[:id])
    @career.update(career_params)
    redirect_to careers_path(@career)
  end

  private
    def career_params
      params.require(:career).permit(
        :user_id,
        :company_name,
        :start,
        :end,
        :employee_pattern,
        :career_outline,
        {:domain_ids =>[]}
      )
    end

end
