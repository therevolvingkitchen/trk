class Message
    
      include ActiveModel::Model
      include ActiveModel::Conversion
      include ActiveModel::Validations
    
      attr_accessor :name, :surname, :email, :phone, :message
    
      validates :name,
      presence: true     
      
      validates :surname,
      presence: true
    
      validates :email,
      presence: true

      validates :phone,
      presence: true
  
        
      validates :message,
      presence: true
    
    end