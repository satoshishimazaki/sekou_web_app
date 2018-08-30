class HomeController < ApplicationController

  # layout "clienttest"
  def index
    render :layout => 'application'
  end

  # 仮登録thanks
  def thanks
    render :layout => 'static_application'
  end

  # 本登録thanks
  def register_fin
    render :layout => 'static_application'
  end

  def test
    render :layout => 'client_application'
  end

  def dbindex
    render :layout => 'client_application'
  end

  def detailscout
    render :layout => 'client_application'
  end

  def firstscout
    render :layout => 'client_application'
  end

end
