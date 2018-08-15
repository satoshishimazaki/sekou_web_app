class ApplicationClientController < ApplicationController
  before_action :authenticate_client!

  def after_sign_out_path_for(resource)
      client_sign_in_path
  end

  def after_sign_in_path_for(resource)
       client_menu_path
   end
end
