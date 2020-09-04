require 'account'

RSpec.describe Account do
  subject(:account) { described_class.new}
  let(:amount) { 1000 }
  let(:today) { '10/01/2012' }
  let(:type) { ' ' }

  it 'shows the date' do
    expect(account.date).to eq Date.today
  end

  context 'When making a deposit' do
    it 'increases the balance' do
      account.deposit(amount)
      expect(subject.balance).to eq(amount)
    end
  end

  context 'When making a withdrawal' do
    it 'decreases the balance' do
      account.deposit(amount)
      account.withdrawal(amount)
      expect(account.balance).to eq(0)
    end
  end

  context 'Transaction details' do
    it 'stores the date, credit, amount and balance for a deposit' do
      allow(account).to receive(:date) { today }
      account.deposit(amount)
      expect(account.transactions).to eq([[today, amount, type, account.balance]])
    end
    it 'stores the date, credit, amount and balance for a withdrawal' do
      allow(account).to receive(:date) { today }
      account.deposit(amount)
      account.withdrawal(500)
      expect(account.transactions[1]).to eq([[today, type, 500, account.balance]])
    end
  end
end
