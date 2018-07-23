class ScoutViewsController < ApplicationController
  def index
    @scouts = Scout.new
  end
end
