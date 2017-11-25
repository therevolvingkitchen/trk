class MessageMailer < ActionMailer::Base

      default from: "TRK contact us <therevolvingkitchen@gmail.com>"
      default to: "therevolvingkitchen@gmail.com"

      layout 'new_message'

      def new_message(message)
        @message = message

        mail subject: "Message from #{message.name}"

      end

    end
