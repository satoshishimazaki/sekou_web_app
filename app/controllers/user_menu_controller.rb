class UserMenuController < ApplicationController

  def index
      @scouts = Scout.all
  end
end
