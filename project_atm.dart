import 'dart:io';

class ATM {
  double balance;

  ATM({this.balance = 50000.65});

  void checkBalance() {
    print('Your current balance is \$${balance.toStringAsFixed(2)}');
  }

  void withdrawAmount(double amount) {
    if (amount > balance) {
      print('Insufficient Balance for withdrawal!');
    } else {
      balance -= amount;
      print('\$${amount.toStringAsFixed(2)} withdrawn successfully.');
    }
  }

  void depositAmount(double amount) {
    balance += amount;
    print('\$${amount.toStringAsFixed(2)} deposited successfully.');
  }

  void contactUs() {
    print('Please contact our customer support at 0307-8340514.');
  }
}

void main() {
  print('************');
  print(' ....Welcome to ATM Machine... !');
  print('************');
  print('');

  var correctAtmNumber = '03078340514';
  var correctPin = '12345';
  int attempts = 0;
  int maxAttempts = 3;
  Duration delayDuration = Duration(seconds: 30);

  /*
          Duration is one type of class and 
          it shows a duration till here to here.
          you can use duration for Days, Minutes 
          and seconds...
        
         */

  while (attempts < maxAttempts) {
    stdout.write('Enter Your ATM number: ');
    var atmNumber = stdin.readLineSync()!;

    stdout.write('Enter your pin: ');
    var pin = stdin.readLineSync()!;

    if (atmNumber == correctAtmNumber && pin == correctPin) {
      print('');
      print('Login Successful!');
      print('');
      break;
    } else {
      attempts++;
      print('');
      print('ATM number or PIN is incorrect! Please try again.');

      if (attempts < maxAttempts) {
        print('Remaining attempts: ${maxAttempts - attempts}');
        print('');
      } else {
        print('No more attempts remaining! Please wait for 30 seconds.');
        sleep(
            delayDuration); // Duration time will start from here again after 30 seconds

        print('************');
        print(' ....Welcome to ATM Machine... !');
        print('************');
        attempts = 0;
      }
    }
  }

  if (attempts >= maxAttempts) {
    print('');
    print('Login failed. No more attempts remaining.');
    print('');
    print('Please contact customer support for assistance.');
    return;
  }

  var atm = ATM();

  while (true) {
    print('1. Check Balance');
    print('2. Withdraw Amount');
    print('3. Deposit Amount');
    print('4. Contact Us');
    print('5. Exit');
    print('');

    stdout.write('Enter your choice: ');
    var choice = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch (choice) {
      case 1:
        atm.checkBalance();
        print('');
        break;
      case 2:
        stdout.write('Enter the amount to withdraw: ');
        var amount = double.tryParse(stdin.readLineSync()!) ?? 0.0;
        atm.withdrawAmount(amount);
        print('');
        break;
      case 3:
        stdout.write('Enter the amount to deposit: ');
        var amount = double.tryParse(stdin.readLineSync()!) ?? 0.0;
        atm.depositAmount(amount);
        print('');
        break;
      case 4:
        atm.contactUs();
        print('');
        break;
      case 5:
        print('Exitting...');
        return;
      default:
        print('Invalid choice. Please try again.');
        break;
    }

    print('');
  }
}