class ScoutViewsController < ApplicationController
  def index
    @scouts = Scout.all
    # ここの変数記述が正しいか後ほど確認する 7.24
  end
end
