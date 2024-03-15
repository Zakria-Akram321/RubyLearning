class Account
  attr_accessor :balance
  def initialize(balance)
    @balance = balance
  end
end

class Transaction
  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end

  def transfer(amount)
    debit(@account_a, amount)
    credit(@account_b, amount)
  end

  private def debit(account, amount)
    account.balance += amount
  end

  private def credit(account, amount)
    account.balance -= amount
  end
end

savings = Account.new(30000)
current = Account.new(50000)

transaction = Transaction.new(savings, current)
transaction.transfer(1000)

puts savings.balance
puts current.balance


class Batman
  def who_is_robin
    puts "Dick Grayson"
  end

  def who_is_robin
    puts "Damian Wayne"
  end
end

batman = Batman.new()
# batman.who_is_robin



