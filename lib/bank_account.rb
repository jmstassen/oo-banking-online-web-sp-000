class BankAccount

  attr_reader :name, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    @old_balance = @balance
    @balance = @balance + amount
  end

  def display_balance
    return "Your balance is $#{@balance}."
  end



end
