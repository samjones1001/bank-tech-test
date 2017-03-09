class Account

  attr_reader :balance
  def initialize(current_transaction = Transaction)
    @current_transaction = current_transaction
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    @current_transaction.new(amount)
  end

  def withdraw(amount)
    @balance -= amount
    @current_transaction.new(-amount)
  end


end
