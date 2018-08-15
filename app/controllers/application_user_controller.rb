class ApplicationUserController < ApplicationController

  def after_sign_out_path_for(resource)
      root_path
  end

  def after_sign_in_path_for(resource)
       user_menu_path
   end

end
