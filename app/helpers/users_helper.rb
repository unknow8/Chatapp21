module UsersHelper
    def avatar_for(user, options = { size: 150 })
        size = options[:size]
        if user.avatar?
            image_tag user.avatar.url, width: size, height: size, class: "avatar-image"
        else
            image_tag "default-profile.png", width: size, height: size, class: "avatar-image"
        end
    end
end