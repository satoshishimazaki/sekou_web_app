class UserMenuController < ApplicationUserController

layout "user_application"
  def index
    @user = User.find(current_user.id)
    @scouts = @user.scouts
  end
end
