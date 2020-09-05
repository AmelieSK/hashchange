require 'account'

RSpec.describe Account do
  subject(:account) { described_class.new} # account = Account.new
  let(:amt) { 1000 }
  let(:today) { '10/01/2012' }
  let(:type) { ' ' }
  
  describe '#date' do # hashtag means you're testing a method
    it 'shows the date' do
      expect(account.date).to eq Date.today.strftime('%d/%m/%Y')
    end
  end

  describe '#deposit' do
    it 'increases the balance' do
      account.deposit(amt)
      expect(subject.balance).to eq(amt)
    end
  end

  describe '#withdrawal' do
    it 'decreases the balance' do
      account.deposit(amt)
      account.withdrawal(amt)
      expect(account.balance).to eq(0)
    end
  end

  context 'Transaction details' do # context when you're testing different outputs
    it 'stores the date, credit, amount and balance for a deposit' do
      allow(account).to receive(:date) { today }
      account.deposit(amt)
      expect(account.transactions).to eq([[today, amt, type, account.balance]])
    end
    it 'stores the date, credit, amount and balance for a withdrawal' do
      allow(account).to receive(:date) { today }
      account.deposit(amt)
      account.withdrawal(500)
      expect(account.transactions[1]).to eq([today, type, 500, account.balance])
    end
  end
end

