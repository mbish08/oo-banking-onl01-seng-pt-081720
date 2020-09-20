require 'pry'

class Transfer
  
  attr_accessor :sender, :receiver, :status
  attr_reader :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount 
  end 
  
  def valid?
    sender.bankaccount.valid? && receiver.bankaccount.valid?
  end 
  
  
end
