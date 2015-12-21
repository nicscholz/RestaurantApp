class SessionController < ApplicationController

   def create
   admin = Admin.find_by_username(params[:username])
   if admin && admin.authenticate(params[:password])
     session[:admin_id] = admin.id
     redirect_to menu_path
   else
     redirect_to log_in_path
   end
 end

 def destroy
   session[:admin_id] = nil
   redirect_to log_in_path
 end
end
