require 'date'

class Account
# DATE = 'date'
  def initialize
    @balance = 0
  end
  def date
    Date.today
  end
  def deposit(amount)
    @balance += amount
  end
end
