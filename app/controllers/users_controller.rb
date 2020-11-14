class UsersController < ApplicationController
  before_action :auth_check, only:[:show]
  def create
    @user = User.new(strong_params)
    if @user.save
      session[:id] = @user.id
      redirect_to user_path(current_user)
    else # if a param is missing it will redirect the use to sign up again
      flash[:error] = "Missing signup fields. Please try again." 
      redirect_to root_path
    end
  end

  def show
    @user = current_user

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def strong_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :email_address, :password)

  end


end
