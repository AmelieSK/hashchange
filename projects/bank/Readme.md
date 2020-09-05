Deposits, withdrawal.
Account statement (date, amount, balance) printing.

Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

object: Account
properties: balance, transactions
methods: .date, .deposit(amount), .withdrawal(amount)
action: @balance +=/-= amount, @transactions << [date, amount, @balance]

object: Statement
properties: transactions_arr # an array of all the transactions done
methods: .print_description, .print_statement
action: 

https://user-images.githubusercontent.com/46627472/92315015-c4facf80-efd7-11ea-985d-fbda6c360c70.png