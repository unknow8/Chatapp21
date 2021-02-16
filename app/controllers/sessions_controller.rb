class SessionsController < ApplicationController
    def create
        user = User.from_omniauth(request.env['omniauth.auth'])
        if user.valid?
            session[:user_id] = user.id
            redirect_to new_room_path, notice: "Logged in sucessfully"
        else
            flash[:message] = user.errors.full_messages.join(", ")
            flash[:notice] = "Failed to login"
            render :new
        end
    end

    def index
        @user = current_user.auth if current_user
    end

    def destroy 
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out"
    end
end