require 'statement'

describe Statement do

  subject(:statement)  { described_class.new }
  let(:transaction)    { double(:transaction) }

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

end
