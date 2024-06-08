

 void main() {
  Codekarta account1 = Codekarta('1234567890', 1000);
  Codekarta account2 = Codekarta('9876543210', 500);

  account1.shott();
  account1.deposit(500);
  account1.pardoxt(200);
  account1.shott();

  account2.shott();
  account2.deposit(300);
  account2.pardoxt(100);
  account2.shott();

  List<Codekarta> accounts = [account1, account2];
  print("Surathisobi umumi: ${shotumum(accounts)}");
}

class Codekarta {
  String _accountNumber;
  double _balance;

  Codekarta(this._accountNumber, this._balance);

  void deposit(double miqdor) {
    if (miqdor > 0) {
      _balance += miqdor;
      print("Depoziti \$$miqdor hisobi bonki $_accountNumber.");
    } else {
      print("Miqdori depozit nestshuda.");
    }
  }

  void pardoxt(double miqdor) {
    if (0 < miqdor && miqdor <= _balance) {
      _balance -= miqdor;
      print("Pardoxtashuda \$$miqdor Surathisobi shumo $_accountNumber.");
    } else if (miqdor <= 0) {
      print("Az surathisobi shumo pardoxt nashudast.");
    } else 
print("Surathisobi shumo kifoya nest.");
  }

  void shott() {
    print("Hisob $_accountNumber surathisob: $_balance.");
  }
}

double shotumum(List<Codekarta> accounts) {
  return accounts.fold(0, (sum, account) => sum + account._balance);
}
