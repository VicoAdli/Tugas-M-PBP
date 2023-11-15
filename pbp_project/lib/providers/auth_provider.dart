import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void setLoggedIn(bool value) {
    _isLoggedIn = value;
    notifyListeners();
  }

  // Fungsi untuk melakukan logout
  void logout() {
    _isLoggedIn = false;
    Future.microtask(() {
      notifyListeners();
    });
  }
}
