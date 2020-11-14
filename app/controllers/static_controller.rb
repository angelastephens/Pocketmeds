class StaticController < ApplicationController
  
  def new
    redirect_to user_path(current_user) if logged_in
    @user = User.new
    
  end




end
