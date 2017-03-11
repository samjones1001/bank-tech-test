## Bank Tech Test
#### Technologies: Ruby, Rspec
### Week 10 tech test for [Makers Academy] (http://www.makersacademy.com)
[Outline](#outline) | [Usage Instructions](#usage-instructions) 

## Brief
#### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

#### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

## Outline
My solution uses three classes - Account, Transaction, and Statement - and makes use of dependency injection to reduce coupling.  Overall, I am happy with the simplicity of my codebase - I think the classes and methods are well named and perform a clear function.  Given more time, I would have liked to continue working on the presentation of the final output of the Statment class, as this is still not quite right.

## Usage Instructions
* clone the repo and run bundle
```shell
$ git clone https://github.com/samjones1001/bank-tech-test
$ cd bank-tech-test
$ rvm 2.3.0
$ bundle
```
* run tests
```shell
$ rspec
```
* usage 
```shell
$ irb
2.3.0 :001 > require './lib/account'
2.3.0 :002 > account = Account.new
2.3.0 :003 > account.deposit(1000)
2.3.0 :004 > account.withdraw(250)
2.3.0 :005 > puts account.statement.pretty_print
```
