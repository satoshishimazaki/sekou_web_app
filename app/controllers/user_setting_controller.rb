class UserSettingController < ApplicationUserController
  # ユーザーログイン後のlayout指定
  layout "user_application"

  def index
  end

  def byebye
    # ここに、削除に必要そうなデータベースで必要なインスタンス変数を羅列する。 多分「変数名.delete」だと思う。
  end

  def byebyeresult
    #退会するボタンを押してpassを入力させる。一応保留にしておく。
    @user = User.find(current_user.id)
  end

  # def create
  #   @user = User.find(current_user.id)
  #   if @user.valid_password?(params[:user][:current_password])
  #
  #   else
  #
  #   end
  # end

  def byebyeaccept
    @user = User.find(current_user.id)
    respond_to do |format|
      if @user.valid_password?(resign_params)
        @user.update(:quit_flag => 1)
        # @user = User.find(@user.id)
        NotificationMailer.quit_message(@user).deliver
        format.js
      else
        format.js { render :informmistake }
      end
    end
  end

  def popupconfig
  end

  def logininfo
  end

  def viewconfig
  end

  private
    def resign_params
      params.require(:password)
    end

end
