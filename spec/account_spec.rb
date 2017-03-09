require_relative '../lib/account'

describe Account do

  let(:account)   { described_class.new }

  it 'can create a new account' do
    expect{ Account.new }.not_to raise_error
  end

  it 'begins with a balance of 0' do
    expect(account.balance).to eq 0
  end
end
