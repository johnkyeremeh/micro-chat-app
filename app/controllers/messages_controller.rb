class MessagesController < ApplicationController
    def index 
        messages = Message.all
        render json: MessageSerializer.new(messages)
    end

    def new
        message = Message.new(message_params)
        render json: MessageSerializer.new(message)
    end

    def create
        message = Message.create(message_params)
        message.save
        render json: MessageSerializer.new(message)
    end

    private

    def message_params
        params.require(:message).permit(:user_id, :conversation_id, :content)
    end
end
