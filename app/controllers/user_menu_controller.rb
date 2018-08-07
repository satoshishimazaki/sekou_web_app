class UserMenuController < ApplicationController
before_action :authenticate_user!
  def index
      @scouts = Scout.all
  end
end
