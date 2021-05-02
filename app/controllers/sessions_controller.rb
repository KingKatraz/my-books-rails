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

    def omniauth
        
        user = User.find_or_create_by(uid: request.env['omniauth.auth'][:uid], provider: request.env['omniauth.auth'][:provider]) do |u|
            u.email = request.env['omniauth.auth'][:info][:email]
            u.password = SecureRandom.hex(10)
        end
            
        if user.valid? 
            flash[:message] = "Logged in with Google!"
            session[:user_id] = user.id
            redirect_to root_path
        else
            flash[:message] = "Credential Error" 
            redirect_to login_path
        end
    end 

end
