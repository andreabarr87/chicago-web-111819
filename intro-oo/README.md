# Intro to Object Orientation

## What We'll Learn

* Define `object` in programming domain
* Explain the concept of sending messages
* Create a class and instantiate an instance of the class
* Explain the difference between a class and an instance
* Pass arguments to `new` by defining an initialize method in class
* Create instance methods
* Call methods on the implicit or explicit `self`
* Define attribute readers and writers using `attr_` macros
* Get more practice with array compositions (`each`, `map`, `select`/`filter`)
* Explain the need for variable scope and why it's important to not utilize global variables

## How We'll Prove We Learned It

Here is a naive implementation of a bank account in Ruby using only a hash which stores key-value pairs.

```ruby
bank_account = {"user_id": 42, "balance": 100, "account_num": 123456}
```

Write an implementation of a bank account that meets the following requirements:

* can print the balance of the account
* can deposit money into the account
* can withdraw money from the account
* keeps track of the account number
* keeps track of the customer id of the account

Write some more methods that meet the following requirements:

* can print out all account balances
* can identify accounts with balances below 10
* can look up an account by account number
* can calculate the average account balance of all the accounts
* can identify the accounts with the three highest balances
