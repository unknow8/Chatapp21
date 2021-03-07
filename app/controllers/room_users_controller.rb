class RoomUsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_room

    def create
        @room.room_users.where(user: current_user).first_or_create
        redirect_to @room
    end

    def destroy 
        @room.room_users.where(user: current_user).destroy_all
        redirect_to @room
    end

    private
        def set_room
            @room = Room.find(params[:room_id])
        end
end