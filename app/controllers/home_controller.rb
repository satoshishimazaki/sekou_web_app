class HomeController < ApplicationController
  # layout "clienttest"
  def index
    render :layout => 'home_application'
  end

  def test
    render :layout => 'clienttest'
  end
end
