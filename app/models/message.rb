class Message < ApplicationRecord
  belongs_to :user, :dependent => :destroy
  belongs_to :room
end
