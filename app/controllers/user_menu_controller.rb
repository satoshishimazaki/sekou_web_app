class UserMenuController < ApplicationController
before_action :authenticate_user!
layout "user_application"
  def index
    @user = User.find(current_user.id)
    @scouts = @user.scouts
  end
end
