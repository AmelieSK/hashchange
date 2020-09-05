require './lib/account.rb'
require 'date'

class Statement

  def initialize(account = Account.new)
    @account = account
  end

  def print_description
     puts "date || credit || debit || balance"
  end

  def print_statement
    print_description
    print_reverse
  end

  private

  def print_reverse
    @account.transactions.reverse!.each do |transaction| 
      puts transaction.join(' || ') 
    end
  end
end
