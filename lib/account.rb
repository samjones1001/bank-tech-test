class Account

  attr_reader :balance, :statement

  def initialize(current_transaction = Transaction, statement = Statement.new)
    @current_transaction = current_transaction
    @statement = statement
    @balance = 0
  end

  def deposit(amount)
    update_balance(amount)
    save_transaction(@current_transaction.new(amount, @balance))
  end

  def withdraw(amount)
    update_balance(-amount)
    save_transaction(@current_transaction.new(amount, @balance))
  end

  private

  def save_transaction(transaction)
    @statement.add_to_statement(transaction)
  end

  def update_balance(amount)
    @balance += amount
  end
end
