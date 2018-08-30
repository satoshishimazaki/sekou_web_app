class StaticPagesController <  ActionController::Base
  #applicationControlerを継承していない
  ##なぜならば、applicationControlerで、ユーザー認証をしないと
  ## スカウトページなどを閲覧できないようにリダイレクトするコードを実装しているため
  def companysummary
    @user = User.find_by(id: params[:user_id])
    @client = Client.find_by(id: params[:client_id])
    if @user == nil && @client == nil
      render :layout => 'static_application'
    elsif !@user.blank?
      render :layout => 'user_application'
    else
      render :layout => 'client_application'
    end
  end

  def contactus
    @user = User.find_by(id: params[:user_id])
    @client = Client.find_by(id: params[:client_id])
    if @user == nil && @client == nil
      render :layout => 'static_application'
    elsif !@user.blank?
      render :layout => 'user_application'
    else
      render :layout => 'client_application'
    end
  end

  def convention
    @user = User.find_by(id: params[:user_id])
    @client = Client.find_by(id: params[:client_id])
    if @user == nil && @client == nil
      render :layout => 'static_application'
    elsif !@user.blank?
      render :layout => 'user_application'
    else
      render :layout => 'client_application'
    end
  end

  def faq
    @user = User.find_by(id: params[:user_id])
    @client = Client.find_by(id: params[:client_id])
    if @user == nil && @client == nil
      render :layout => 'static_application'
    elsif !@user.blank?
      render :layout => 'user_application'
    else
      render :layout => 'client_application'
    end
  end

  def privacypolicy
    @user = User.find_by(id: params[:user_id])
    @client = Client.find_by(id: params[:client_id])
    if @user == nil && @client == nil
      render :layout => 'static_application'
    elsif !@user.blank?
      render :layout => 'user_application'
    else
      render :layout => 'client_application'
    end
  end

end
