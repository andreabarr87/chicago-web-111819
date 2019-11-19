require 'pry'
class BankAccount
  attr_reader :user_id, :acct_id
  # attr_writer :balance
  attr_accessor :balance
  @@all = []

  def initialize(user_id, acct_id, balance=0)
    @balance = balance
    @user_id = user_id
    @acct_id = acct_id
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_balances
    self.all.map do |bank_account|
      bank_account.balance
    end
  end

  # AKA attr_readers! Don't need both, we prefer the shorthand macro
  # def user_id
  #   @user_id
  # end

  # def balance
  #   @balance
  # end

  def say_balance
    puts "This is account with id: #{user_id} and the balance is #{balance}."
  end

  def deposit(amount)
    self.balance += amount
    # @balance = @balance + amount
  end

  # def balance=(new_balance)
  #   @balance = new_balance
  # end

  def withdraw(amount)
    if @balance >= amount
      @balance = @balance - amount
    else
      raise "SORRY! LACKING SUFFICIENT FUNDS FOR THIS WITHDRAWAL"
    end
  end


end
acct = BankAccount.new(3, 123456)
acct_deux = BankAccount.new(2, 876451, 500)
acct_tres = BankAccount.new(2, 876451, 500000)
acct.deposit(25)
acct.say_balance
p BankAccount.all_balances
# binding.pry
