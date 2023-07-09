class MessagesController < ApplicationController
    def index
        @messages = Message.all.order("created_at DESC")
    end
    def show
        @message = Message.find(params[:id])
    end
    def new
        @message = Message.new #Message is the model class (db)

    end
    def create
        @message = Message.new(message_params)
        if @message.save
            redirect_to root_path
        else
            render 'new'
        end
    end

    private
    def message_params
        params.require(:message).permit(:title,:description) #Allow only title and description params and clip the others

    end
end
