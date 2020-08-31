require 'bank'

describe Account do
it 'can make a deposit' do
	# set up
	account = Account.new
	# execute

	# verify
	expect(account.deposit(1000)).to eq 1000
end

it 'shows the date' do
	# set up
	account = Account.new
	# execute
	# verify
	expect(account.date).to eq Date.today
end
end
