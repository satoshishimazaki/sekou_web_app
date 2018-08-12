class MypageController < ApplicationController
    # ユーザーログイン後のlayout指定
    layout "user_application"

    def index
        @user = User.find(current_user.id)
        @scouts = @user.scouts
    end
end
