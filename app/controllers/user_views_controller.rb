class UserViewsController < ApplicationClientController
  layout "client_application"
  def show
    @user = User.find(params[:user_id])
    @client = Client.find(current_client.id)
    @career = Career.where(:user_id => @user.id)
  end

end
