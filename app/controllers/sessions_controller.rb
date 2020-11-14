class SessionsController < ApplicationController


  
  def create #log in
    user = User.find_by(email_address: params[:email_address])
      # if they typed in the right password then log them in, if not show them the form again
      if user && user.authenticate(params[:password]) #authenticate hashes what the users types in then compares it to the hash version of the original password 
        session[:id] = user.id
        redirect_to user_path(current_user)
      else 
        flash[:error] = "Incorrect email address or password"
        redirect_to root_path
      end
  end


  def destroy #Log out 
    session.clear
    redirect_to root_path

  end
end
