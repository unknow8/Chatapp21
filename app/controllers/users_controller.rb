class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def edit
    end

    def update
        if Current.user.update(user_params)
            redirect_to Current.user
        else
            flash.now[:alert] = "Something went wrong. Try again"
            render :edit
        end
    end

    private
        def user_params
            params.require(:user).permit(:username, :avatar)
        end

        def logged_in_user
            unless logged_in?
                flash[:danger] = "Please log in"
                button_to "Logged in with Google", '/auth/:provider/callback'
            end
        end
end
