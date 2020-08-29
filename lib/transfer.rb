class Transfer

  attr_reader :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
  end
end
