class Account

  attr_reader :balance, :statement

  def initialize(current_transaction = Transaction, statement = Statement.new)
    @current_transaction = current_transaction
    @statement = statement
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    save_transaction(@current_transaction.new(amount))
  end

  def withdraw(amount)
    @balance -= amount
    @current_transaction.new(-amount)
  end

  def save_transaction(transaction)
    @statement.add_to_statement(transaction)
  end
end
