module UsersHelper
    def check_log_in
        if ! logged_in?
            flash[:notice] = "please log in"
        end
    end

    def avatar_for(user, options = { size: 150 })
        size = options[:size]
        if user.avatar?
            image_tag user.avatar.url(:thumb), width: size, class: "avatar-image"
        else
            image_tag "default-profile.png", width: size, class: "avatar-image"
        end
    end
end
