class UserSettingController < ApplicationController
  # ユーザーログイン後のlayout指定
  layout "user_application"

  def index
  end

  def byebye
    # ここに、削除に必要そうなデータベースで必要なインスタンス変数を羅列する。 多分「変数名.delete」だと思う。
  end

  def popupconfig
  end

  def logininfo
  end

  def viewconfig
  end
end
