class SessionsController < ApplicationController
    ## log in using google api, omniauth
    # def omniauth 
    #     user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
    #         u.username = auth['info']['first_name']
    #         u.email = auth['info']['email']
    #         u.password_digest = auth['info']['last_name']
    #         u.password = SecureRandom.urlsafe_base64
    #     end

    #     if user.valid?
    #         redirect_to root_path
    #     else
    #         flash[:message] = user.errors.full_messages.join(", ")
    #         redirect_to root_path
    #     end
    # end

    # private
    # def auth
    #     request.env['omniauth.auth']
    # end

    def omniauth
        user = User.from_omniauth(request.env['omniauth.auth'])
        if user.valid?
            # session[:user_id] = user.id
            redirect_to root_path
        else
            flash[:message] = user.errors.full_messages.join(", ")
            redirect_to main_path
        end
    end
end