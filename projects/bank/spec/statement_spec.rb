require 'statement'

RSpec.describe Statement do
  subject(:statement) { described_class.new(an_account.transactions) }

  let(:an_account) { instance_double('An account', transactions: [['10/01/2012', 1000, ' ', 1000]]) }

  describe '#print_description' do
    it 'prints the description' do
      expect { statement.print_description }.to output("date || credit || debit || balance\n").to_stdout
    end
  end

  describe '#print_statement' do
    it 'prints transactions in reverse order of the date' do
      expect { statement.print_statement }.to output("date || credit || debit || balance
10/01/2012 || 1000 ||   || 1000\n").to_stdout
    end
  end
end
