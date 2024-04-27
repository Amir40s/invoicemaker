import 'package:flutter/material.dart';


class ClientsListProvider extends ChangeNotifier {
  String? _name;
  String? _email;
  String? _address;
  String? _mobile;
  String? _phone;
  String? _fax;

  get name => _name;
  get email => _email;
  get address => _address;
  get mobile => _mobile;
  get phone => _phone;
  get fax => _fax;

  void addClient(clientName, clientEmail,clientAddress,clientMobile,clientPhone,clientFax) {
    _name =  clientName;
    _email = clientEmail;
    _address = clientAddress;
    _mobile = clientMobile;
    _phone = clientPhone;
    _fax = clientFax;
    notifyListeners();
  }

  updateItem(String clientName, String clientEmail, String clientAddress, String clientMobile, String clientPhone, String clientFax) {
    _name = clientName;
    _email =  clientEmail;
    _address  = clientAddress;
    _mobile = clientMobile;
    _phone = clientPhone;
    _fax = clientFax;
    notifyListeners();
  }

  void clearAllData() {
    _name =  null;
    _email = null;
    _address = null;
    _mobile = null;
    _phone = null;
    _fax = null;
    notifyListeners();
  }
}

