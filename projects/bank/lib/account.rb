require 'date'
# comment
class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def date
    Date.today.strftime('%d/%m/%Y')
  end

  def deposit(amount)
    @balance += amount
    @transactions << [date, amount, ' ', @balance]
  end

  def withdrawal(amount)
    @balance -= amount
    @transactions << [date, ' ', amount, @balance]
  end
end
