class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        if session[:user_id]
            Current.user = User.find(session[:user_id])
        end
    end
    
    include SessionsHelper

    def current_ability #for cancan
        @current_ability ||= Ability.new(Current.user)
    end
end
