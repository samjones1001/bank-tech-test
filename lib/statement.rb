class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_to_statement(transaction)
    @transactions << transaction
  end

end
