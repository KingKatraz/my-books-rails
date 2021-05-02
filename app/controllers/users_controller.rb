class UsersController < ApplicationController
    
    def index
    end 
    
    def new
        if !logged_in?
        @user = User.new
        else
            redirect_to root_path
        end
    end 

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id #log user in 
            redirect_to root_path
        else
            #show some errors
            #make them try again
            render :new
        end 
    end

    def show
    end

    private

    def user_params
        params.require(:user).permit(:email, :password)
    end

end
