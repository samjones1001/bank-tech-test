require_relative '../lib/account'
#
describe Account do

  let(:current_transaction) { double(:current_transaction, new: transaction) }
  let(:transaction) { double(:transaction) }
  subject(:account) { described_class.new(current_transaction) }


  it 'can create a new account' do
    expect{ Account.new }.not_to raise_error
  end

  it 'begins with a balance of 0' do
    expect(account.balance).to eq(0)
  end

  it 'can report current balance' do
    account.deposit(100)
    expect(account.balance).to eq(100)
  end

  describe '#deposit' do
    it 'increases the balance of the account by the given amount'do
      expect { account.deposit(100) }.to change{account.balance}.by(100)
    end

    it 'creates a new transaction' do
        account.deposit(100)
        expect(current_transaction).to have_received(:new)
    end

  end

  describe '#withdraw' do
    it 'decreases the balance of the account by the given ammount' do
      expect { account.withdraw(100) }.to change{account.balance}.by(-100)
    end

    it 'creates a new transaction' do
        account.withdraw(100)
        expect(current_transaction).to have_received(:new)
    end
  end
end
