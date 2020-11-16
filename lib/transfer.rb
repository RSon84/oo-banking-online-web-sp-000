class Transfer
  # your code here
  attr_accessor :sender, :receiver, :transfer

  def initialize(sender, receiver, transfer)
    @sender = sender
    @receiver = receiver
    @transfer = transfer
  end
end
