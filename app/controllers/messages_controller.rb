class MessagesController < ApplicationController

      def new
        @message = Message.new
      end

      def create
        @message = Message.new(message_params)

        if @message.valid?
          MessageMailer.new_message(@message).deliver
          render :json => {
            :type => "success",
            :message => "Your messages has been sent."
          }.to_json
        else
          render :json => {
            :type => "danger",
            :message => "An error occurred while delivering this message."
          }.to_json
        end
      end

    private

      def message_params
        params.require(:message).permit(:name, :email, :surname, :phone, :message)
      end

end
