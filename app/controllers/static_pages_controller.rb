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
  end

  def convention
  end

  def faq
  end

  def praivacypolicy
  end

end
