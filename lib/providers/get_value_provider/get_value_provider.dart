import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class GetValueProvider with ChangeNotifier{
  var _businessname;
  var _contactnumber;
  var _businessemail;
  var _businessaddress;

  get businessname => _businessname;
  get contactnumber => _contactnumber;
  get businessemail => _businessemail;
  get businessaddress => _businessaddress;

  void updateText(
      String? name, String? number, String? email, String? address) {
     _businessname = name;
     _contactnumber = number;
     _businessemail = email;
     _businessaddress = address;
    notifyListeners();
  }

  void clearAllData() {
    _businessname = "";
    _contactnumber = "";
    _businessemail = "";
    _businessaddress = "";
    notifyListeners();
  }
}