require 'account'

describe 'Account' do
  it 'can make a deposit' do
    account = Account.new
    expect(account.deposit(1000)).to eq 1000
  end

  it 'shows the date' do
    account = Account.new
    expect(account.date).to eq Date.today
  end
end
