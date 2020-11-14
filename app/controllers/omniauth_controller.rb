class OmniauthController < ApplicationController

    def create
        @auth = request.env['omniauth.auth']
        user = User.find_by(unique_id:request.env['omniauth.auth'][:uid])
           if user
            session[:id] = user.id 
            redirect_to user_path(current_user)
           else
            @user = User.create(
                email_address: @auth[:info][:email],
                first_name: @auth[:info][:first_name],
                last_name: @auth[:info][:last_name],
                phone_number: 0000000000,
                password:SecureRandom.uuid,
                unique_id: @auth[:uid])
            session[:id] = @user.id
            redirect_to user_path(current_user)
           end

    end
   
     
      
   
end