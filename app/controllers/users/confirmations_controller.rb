# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController

  def after_sign_out_path_for(resource)
      root_path
  end

  def after_sign_in_path_for(resource)
       user_menu_path
  end

   #GET /resource/confirmation/new
   def new
     super
   end

   #POST /resource/confirmation
   def create
     self.resource = resource_class.send_confirmation_instructions(resource_params)
     yield resource if block_given?

     if successfully_sent?(resource)
       redirect_to home_register_fin_path
     else
       redirect_to home_register_fin_path
     end
   end

   #GET /resource/confirmation?confirmation_token=abcdef
   def show
     super
   end

   protected

   #The path used after resending confirmation instructions.
   def after_resending_confirmation_instructions_path_for(resource_name)
     super(resource_name)
   end

   #The path used after confirmation.
   def after_confirmation_path_for(resource_name, resource)
     super(resource_name, resource)
   end
end
