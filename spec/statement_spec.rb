require 'statement'

describe Statement do

  subject(:statement)  { described_class.new }
  let(:transaction)    { double(:transaction, amount: 1000, balance: 1000, date: "1/1/2017") }
  let(:transaction2)   { double(:transaction, amount: 250, balance: 1250, date: "7/1/2017") }
  let(:transaction3)   { double(:transaction, amount: -600, balance: 650, date: "9/1/2017") }

  describe '#initialize' do
    it 'initializes with an empty array of transactions' do
      expect(statement.transactions).to be_empty
    end
  end

  describe '#add_to_statement' do
    it 'adds to the transactions array' do
      statement.add_to_statement(transaction)
      expect(statement.transactions).to include(transaction)
    end

    it 'can add multiple transactions' do
      statement.add_to_statement(transaction)
      statement.add_to_statement(transaction)
      statement.add_to_statement(transaction)
      expect(statement.transactions.length).to be(3)
    end
  end

  describe '#pretty_print' do
    before do
      statement.add_to_statement(transaction)
      statement.add_to_statement(transaction2)
      statement.add_to_statement(transaction3)
    end

    it 'prints a formatted header' do
      expect(statement.pretty_print).to eq("|date       || credit || debit   || balance\n")
    end

  end

end
