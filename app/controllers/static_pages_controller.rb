class StaticPagesController <  ActionController::Base
  #applicationControlerを継承していない
  ##なぜならば、applicationControlerで、ユーザー認証をしないと
  ## スカウトページなどを閲覧できないようにリダイレクトするコードを実装しているため
  def companysummary
    @user = 1
    if @user = 1
      render :layout => 'user_application'
    else
      render :layout => 'client_application'
    end
  end

  def contactus
    @user = 1
    if @user = 1
      render :layout => 'static_application'
    else
      render :layout => 'client_application'
    end
  end

  def convention
    @user = 1
    if @user = 1
      render :layout => 'static_application'
    else
      render :layout => 'client_application'
    end
  end

  def faq
    @user = 1
    if @user = 1
      render :layout => 'static_application'
    else
      render :layout => 'client_application'
    end
  end

  def privacypolicy
    @user = 1
    if @user = 1
      render :layout => 'static_application'
    else
      render :layout => 'client_application'
    end
  end

end
