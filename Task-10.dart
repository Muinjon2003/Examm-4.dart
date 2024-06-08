

void main() {
  BankAccount account1 = BankAccount('123456', 1000.0);
  BankAccount account2 = BankAccount('789012', 500.0);
  BankAccount account3 = BankAccount('345678', 1500.0);

  account1.deposit(200.0);
  account2.withdraw(50.0);
  account3.deposit(300.0);

  account1.displayBalance();
  account2.displayBalance();
  account3.displayBalance();

  Set<BankAccount> accounts = {account1, account2, account3};

  print('Total balance of all accounts: \$${totalBalance(accounts).toStringAsFixed(2)}');
}

class BankAccount {

  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited \$${amount.toStringAsFixed(2)} into account $_accountNumber.');
    } else {
      print('Deposit amount must be positive.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew \$${amount.toStringAsFixed(2)} from account $_accountNumber.');
    } else if (amount > _balance) {
      print('Insufficient balance.');
    } else {
      print('Withdrawal amount must be positive.');
    }
  }

  void displayBalance() {
    print('Current balance of account $_accountNumber: \$${_balance.toStringAsFixed(2)}');
  }

  double get balance => _balance;
}
double totalBalance(Set<BankAccount> accounts) {
  double total = 0.0;
  for (var account in accounts) {
    total += account.balance;
  }
  return total;
}


