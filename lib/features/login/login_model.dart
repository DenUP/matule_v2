import 'package:flutter/material.dart';

class LoginModel extends ChangeNotifier {
  String _login = '';
  String _password = '';
  bool _isObscureText = true;

  String get login => _login;
  String get password => _password;
  bool get isObscureText => _isObscureText;

  void setLogin(String value) {
    _login = value;
    notifyListeners();
  }

  void setPassword(String value) {
    _password = value;
    notifyListeners();
  }

  void setObscureText() {
    _isObscureText = !_isObscureText;
    notifyListeners();
  }

  bool validateEmail() {
    const String emailRegexp =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|'
        r'(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
        r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final RegExp regExp = RegExp(emailRegexp);
    return regExp.hasMatch(_login);
  }

  bool allValidate() {
    return validateEmail() && _password.length >= 8;
  }
}
