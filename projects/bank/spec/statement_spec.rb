require 'statement'

describe 'Statement' do
  it 'prints the statement' do
    statement = Statement.new
    expect(statement.print).to eq 'date || credit || debit || balance
    12/03/2019 || 1000 ||   || 1000'
  end
end