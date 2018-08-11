class ApplicationController < ActionController::Base

  ## ユーザ認証が終了していない限り、トップページを表示する
  # before_action :authenticate_user!
  def after_sign_in_path_for(resource)
      mypage_path
  end

  def after_sign_out_path_for(resource)
      root_path
  end
end
