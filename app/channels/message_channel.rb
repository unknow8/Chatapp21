class MessageChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stop_all_streams
    @room_user = current_user.room_users.find_by(room_id: params["id"])
    @room = @room_user.room
    stream_for @room
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def touch
    @room_user.touch(:last_read_at)
  end
end
