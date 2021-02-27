class User < ApplicationRecord
    has_secure_password

    def self.from_omniauth(response)
        User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
            u.username = response[:info][:name]
            u.email = response[:info][:email]
            u.password = SecureRandom.urlsafe_base64
        end
    end

    validates :username, presence: true

    mount_uploader :avatar, AvatarUploader
    serialize :avatars, JSON
end
