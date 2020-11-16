class Transfer
  # your code here
  attr_accessor :sender, :receiver, :transfer, :status, :amount

  def initialize(sender, receiver, transfer)
    @sender = sender
    @receiver = receiver
    @transfer = transfer
    @status = "pending"
    @amount = 50
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
end
end
