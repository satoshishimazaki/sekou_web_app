class UserSettingController < ApplicationController
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
    #退会するボタンを押してpassを入力させる。一応保留にしておく。
    @user = User.find(current_user.id)
    if @user.valid_password?(params[:user][:current_password])
      render 
    else

    end
  end

  def popupconfig
  end

  def logininfo
  end

  def viewconfig
  end

end
