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
    @sender.valid? && @receiver.valid?
  end 
  
  def execute_transaction
    if @sender.balance > 0 && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
    end 
  end 
  
end
