class MessageChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stop_all_streams
    stream_for Room.find(params["id"])
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
