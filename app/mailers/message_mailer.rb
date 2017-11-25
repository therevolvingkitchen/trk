class MessageMailer < ActionMailer::Base
    
      default from: "imgamehmet@gmail.com"
      default to: "therevolvingkitchen@gmail.com"
      
      layout 'new_message'
      
      def new_message(message)
        @message = message
        
        mail subject: "Message from #{message.name}"

        #mail(to: "mimga74@yahoo.com",
        #body: message.name,
        #content_type: "text/html",
        #subject: "Already rendered!")
      end
    
    end