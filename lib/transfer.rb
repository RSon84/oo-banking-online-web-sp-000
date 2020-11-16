class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
end


def execute_transaction
  if @sender.balance > @amount && valid? && @status == "pending"

        @sender.balance -= @amount
        @receiver.balance += @amount
    @status = "complete"
  else
    bad_transfer
  end
end

def bad_transfer
  @status = "rejected"
  return "Transaction rejected. Please check your account balance."
end

def reverse_transfer
  if @status == "complete"
  @sender.balance += @amount
  @receiver.balance -= @amount
  @.status = "reversed"

end
end

end
