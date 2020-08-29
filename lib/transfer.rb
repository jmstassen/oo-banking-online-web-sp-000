class Transfer

  attr_reader :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    if self.valid? == true && @status == "pending"
      sender.old_balance = sender.balance
      receiver.old_balance = receiver.balance
      sender.balance -= amount
      receiver.balance += amount
      @status = "complete"
    else
      return "invalid"
    end
  end


end
