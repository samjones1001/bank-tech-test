class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
    @body = ''
  end

  def add_to_statement(transaction)
    @transactions << transaction
  end

  def pretty_print
    head = "|date       || credit || debit   || balance\n"
    format_for_printing
    head + @body
  end

  private
  
  def format_for_printing
    @transactions.each do |transaction|
      transaction.amount > 0 ? credit = transaction.amount : debit = transaction.amount.abs
      @body += "|#{transaction.date}   ||" '%10s' % "#{credit}||" + '%11s' % " #{debit}||" + '%9s' % "#{transaction.balance}\n"
    end
  end

end
