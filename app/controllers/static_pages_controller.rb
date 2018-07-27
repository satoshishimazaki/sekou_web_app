class StaticPagesController < ApplicationController
  def companysummary
    @user = 1
    if @user = 1
      render :layout => 'static_application'
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
