class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
end

# def execute_transaction
#   if @sender.balance > amount && @status == "pending" && @sender.valid? == true
#     @sender.balance -= amount
#     @receiver.balance += amount
#     @status = "complete"
#   else
#     @sender.valid? == false || @sender.balance < amount || @status != "pending"
#     @status = "rejected"
#     return "Transaction rejected. Please check your account balance."
#   end
# end
#
# end


def execute_transaction
  if @sender.balance < @amount && !valid?
    @status = "rejected"
    return "Transaction rejected. Please check your account balance."

  # elsif @status == "complete"
  #   puts "Transaction was already excuted"
  else
    @sender.deposit( @amount * -1 )
    @receiver.deposit( @amount )
    @status = "complete"
  end
end
end
