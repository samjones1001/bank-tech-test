require 'transaction'

describe Transaction do

  it 'can have a positive amount' do
    transaction = Transaction.new(100)
    expect(transaction.amount).to eq(100)
  end

  it 'can have a negative amount' do
    transaction = Transaction.new(-100)
    expect(transaction.amount).to eq(-100)
  end

  it 'knows the date it was created' do
    transaction = Transaction.new(100)
    expect(transaction.date).to eq(DateTime.new.strftime("%d/%m/%Y"))
  end
end
