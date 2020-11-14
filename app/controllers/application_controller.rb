class ApplicationController < ActionController::Base

    def current_user
        User.find_by_id(session[:id])  
    end 

    def logged_in
     !!current_user 
    end 

    def auth_check
        if !logged_in
            flash[:error] = "You must be logged in to view this page"
        redirect_to root_path   
        end 
    end 
end
