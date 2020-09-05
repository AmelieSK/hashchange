require './lib/account.rb'
require 'date'
# comment
class Statement
  def initialize(transactions_arr)
    @transactions_arr = transactions_arr
  end

  def print_description
    puts 'date || credit || debit || balance'
  end

  def print_statement
    print_description
    print_reverse
  end

  private

  def print_reverse
    @transactions_arr.reverse!.each do |transaction|
      puts transaction.join(' || ')
    end
  end
end
