class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  serialize :avatars, JSON

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  devise :omniauthable, omniauth_providers: [:google_oauth2]
  
  validates :username, presence: true
  validates_uniqueness_of :username

  has_many :room_users, dependent: :destroy
  has_many :rooms, through: :room_users
  has_many :messages, dependent: :destroy

  def self.online 
    ids = ActionCable.server.pubsub.redis_connection_for_subscriptions.smembers "online"
    where(id: ids)
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(username: data['name'],
           email: data['email'],
           password: Devise.friendly_token[0,20]
        )
    end
    user
end

   # User Avatar Validation
   validates_integrity_of  :avatar
   validates_processing_of :avatar
  
   private
     def avatar_size_validation
       errors[:avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
     end
end
