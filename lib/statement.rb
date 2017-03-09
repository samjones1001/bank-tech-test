class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_to_statement(transaction)
    @transactions << transaction
  end

  def pretty_print
    "|date       || credit || debit   || balance\n"
  end

end
