class MessagesController < ApplicationController
    
      def new
        @message = Message.new
      end
    
      def create
        @message = Message.new(message_params)
        
        if @message.valid?
          MessageMailer.new_message(@message).deliver
          redirect_to contact_path, notice: "Your messages has been sent."
        else
          flash[:alert] = "An error occurred while delivering this message."
          render :new
        end
      end
end