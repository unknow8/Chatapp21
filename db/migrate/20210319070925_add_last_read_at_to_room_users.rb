class AddLastReadAtToRoomUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :room_users, :last_read_at, :datetime
  end
end
