class Transfer
  # your code here
  attr_accessor :sender, :receiver, :transfer, :status

  def initialize(sender, receiver, transfer)
    @sender = sender
    @receiver = receiver
    @transfer = transfer
    @status = "pending"
  end
end
