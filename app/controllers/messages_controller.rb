class MessagesController < ApplicationController
    def index

    end
    def new
        @message = Message.new #Message is the model class (db)
    end
    def create
        @message = Message.new(message_params)
    end

    private
    def message_params
        params.require(:message).permit(:title,:description) #Allow only title and description params and clip the others

    end
end
