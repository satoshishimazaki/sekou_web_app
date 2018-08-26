class UserMenuController < ApplicationUserController

layout "user_application"
  def index
    @user = User.find(current_user.id)
    @scouts = Scout.where(user_id: current_user.id).order(created_at: :desc).limit(10)
  end
end
