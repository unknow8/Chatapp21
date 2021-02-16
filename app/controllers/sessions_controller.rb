class SessionsController < ApplicationController
    #log in using google api, omniauth
    def omniauth 
        binding.pry
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider'])
    end

    def auth
        request.env['omniauth.auth']
    end
end