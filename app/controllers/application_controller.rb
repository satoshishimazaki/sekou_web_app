class ApplicationController < ActionController::Base

  ## ユーザ認証が終了していない限り、トップページを表示する
  #before_action :authenticate_user!
end
