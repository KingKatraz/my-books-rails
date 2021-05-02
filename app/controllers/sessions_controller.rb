class SessionsController < ApplicationController

def new #Render login from 
end

def create #Processing the login form 
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
        #logging in user
        session[:user_id] = user.id
        redirect_to root_path #Welcome Page
    else
        render :new
    end
end 

def destroy # Logout 
    session.delete :user_id
    redirect_to login_path
end

end
