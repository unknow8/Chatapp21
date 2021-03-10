class MessagesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_room

    def create 
        @message = @room.messages.create(message_params)
        MessageChannel.broadcast_to @room, message: render_to_string(@message)
    end

    private
        def set_room
            @room = Room.find(params[:room_id])
        end

        def message_params
            params.require(:message).permit(:body).merge(user: current_user)
        end
end