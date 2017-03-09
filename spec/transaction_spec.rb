require 'transaction'

describe Transaction do

  subject (:transaction)   { described_class.new(100,100) }

  it 'can have a positive amount' do
    expect(transaction.amount).to eq(100)
  end

  it 'can have a negative amount' do
    transaction2 = Transaction.new(-100, -100)
    expect(transaction2.amount).to eq(-100)
  end

  it 'knows the date it was created' do
    expect(transaction.date).to eq(Time.now.strftime("%d/%m/%Y"))
  end

  it 'stores the account\'s updated balance' do
    expect(transaction.balance).to eq(100)
  end

end
