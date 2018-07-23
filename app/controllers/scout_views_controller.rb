class ScoutViewsController < ApplicationController
  def index
    @scouts = Scout.all
  end
end
