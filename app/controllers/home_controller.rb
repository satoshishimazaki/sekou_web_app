class HomeController < ActionController::Base
  #applicationControlerを継承していない
  ##なぜならば、applicationControlerで、ユーザー認証をしないと
  ## スカウトページなどを閲覧できないようにリダイレクトするコードを実装しているため

  # layout "clienttest"
  def index
    render :layout => 'user_application'
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
