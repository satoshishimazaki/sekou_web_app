class UsersController < ApplicationController
  before_action :authenticate_user!

  #初回ログイン時はnew画面を強制表示させ、履歴書登録を促す。
  def index
    if current_user ==  nil
      redirect_to edit_resume_path
    else
      @user = User.all
    end
  end

  def show
    @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    @user.update(user_params)
    redirect_to resume_path(@user)
  end

  private
    def user_params
      params.require(:user).permit(
        :last_name,
        :first_name,
        :last_name_kana,
        :first_name_kana,
        :phone_number,
        :email,
        :password,
        :birth,
        :sex,
        :employment_status,
        :address_post,
        :prefecture_id,
        :address_city,
        :address_building,
        :university,
        :faculty,
        :graduate,
        :desired_salary,
        :personal_summary,
        :not_public_company,
        {:qualification_ids =>[]},
        {:job_objective_ids =>[]})
    end

end
