class Transaction

  attr_reader :amount, :date

  def initialize(amount, date = Time.now)
    @date = date.strftime("%d/%m/%Y")
    @amount = amount
  end

end
