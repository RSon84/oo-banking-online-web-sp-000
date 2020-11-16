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
  if @sender.balance > @amount && valid? && self.status == "pending"

        @sender.balance -= @amount
        @receiver.balance += @amount
    self.status = "complete"
  else
    bad_transfer
  end
end

def bad_transfer
  self.status = "rejected"
  return "Transaction rejected. Please check your account balance."
end

def reverse_transfer
  if self.status = "complete"
  @sender.balance += @amount
  @receiver.balance -= @amount
  self.status = "reversed"

end
end

end
